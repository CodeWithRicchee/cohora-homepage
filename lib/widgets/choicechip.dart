import 'package:cohora_homeui_web/data/choicechip.dart';
import 'package:cohora_homeui_web/models/choice_chip.dart';
import 'package:cohora_homeui_web/viewmodels/selectedchip.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChoiceChipSelector extends StatefulWidget {
  const ChoiceChipSelector({Key? key}) : super(key: key);

  @override
  State<ChoiceChipSelector> createState() => _ChoiceChipSelectorState();
}

class _ChoiceChipSelectorState extends State<ChoiceChipSelector> {
  String selectedChip = "Top";
  List<ChoiceChipData> choiceChips = ChoiceChips.all;
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<SelectedChip>(context);
    return SizedBox(
      height: 50,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: choiceChips
            .map((choiceChip) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: ChoiceChip(
                    label: Text(
                      choiceChip.label!,
                    ),
                    labelStyle: const TextStyle(color: Colors.black),
                    onSelected: (isSelected) {
                      choiceChips = choiceChips.map((otherChip) {
                        final newChip = otherChip.copy(isSelected: false);

                        vm.changeChip(selectedChip);
                        selectedChip = choiceChip.label!;

                        return choiceChip == newChip
                            ? newChip.copy(isSelected: isSelected)
                            : newChip;
                      }).toList();
                    },
                    selected: choiceChip.isSelected!,
                    selectedColor: const Color.fromRGBO(226, 247, 222, 1),
                    backgroundColor: Colors.white,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
