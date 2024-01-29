import 'package:ddfapp/core/common/widgets/main_divider.dart';
import 'package:ddfapp/src/home/presentation/widgets/menu_container.dart';
import 'package:fluent_ui/fluent_ui.dart';

import '../../../../core/common/widgets/main_text_input.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            offset: const Offset(-6.0, -6.0),
            blurRadius: 16.0,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(6.0, 6.0),
            blurRadius: 16.0,
          ),
        ],
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MenuContainer(
                    title: 'CLEAR',
                    icon: const Icon(
                      FluentIcons.remove_filter,
                      size: 14,
                    ),
                    children: [
                      Button(
                        child: const SizedBox(
                          width: 80,
                          child: Text(" TPS "),
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Button(
                        child: const SizedBox(
                          width: 80,
                          child: Text(" RPM "),
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Button(
                        child: const SizedBox(
                          width: 80,
                          child: Text(" INJ "),
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                  const MainDivider(
                    size: 160,
                    marginH: 20,
                    marginV: 20,
                  ),
                  MenuContainer(
                    title: 'INSERT',
                    icon: const Icon(
                      FluentIcons.insert,
                      size: 14,
                    ),
                    children: [
                      Row(
                        children: [
                          Button(
                            child: const SizedBox(
                                width: 110, child: Text("DEFAULT")),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Button(
                            child: const SizedBox(
                                width: 110, child: Text("LOAD DATA")),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            height: 38,
                            child: MainTextInput(
                              boxDecoration: BoxDecoration(
                                  color: Color.fromARGB(255, 249, 249, 249)),
                              disabled: false,
                              placholder: "injector",
                              // controller: setInjectorVal,
                            ),
                          ),
                          FilledButton(
                            child: const Text("OK"),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  const MainDivider(
                    size: 160,
                    marginH: 20,
                    marginV: 20,
                  ),
                  MenuContainer(
                    title: 'INSERT BY RANGE',
                    icon: const Icon(
                      FluentIcons.step_insert,
                      size: 14,
                    ),
                    width: 300,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "TPS > ",
                          ),
                          const SizedBox(
                            height: 35,
                            child: MainTextInput(
                              boxDecoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Color.fromARGB(255, 249, 249, 249)),
                              disabled: false,
                              placholder: "min",
                            ),
                          ),
                          const Text(
                            "--",
                          ),
                          const SizedBox(
                            height: 35,
                            child: MainTextInput(
                              boxDecoration: BoxDecoration(
                                  color: Color.fromARGB(255, 249, 249, 249)),
                              disabled: false,
                              placholder: "max",
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          FilledButton(
                            child: const Text(
                              "OK",
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "RPM > ",
                          ),
                          const SizedBox(
                            height: 35,
                            child: MainTextInput(
                              boxDecoration: BoxDecoration(
                                  color: Color.fromARGB(255, 249, 249, 249)),
                              disabled: false,
                              placholder: "min",
                            ),
                          ),
                          const Text(
                            "--",
                          ),
                          const SizedBox(
                            height: 35,
                            child: MainTextInput(
                              boxDecoration: BoxDecoration(
                                  color: Color.fromARGB(255, 249, 249, 249)),
                              disabled: false,
                              placholder: "max",
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          FilledButton(
                            child: const Text(
                              "OK",
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "INJ > ",
                          ),
                          const SizedBox(
                            height: 35,
                            child: MainTextInput(
                              boxDecoration: BoxDecoration(
                                  color: Color.fromARGB(255, 249, 249, 249)),
                              disabled: false,
                              placholder: "min",
                            ),
                          ),
                          const Text(
                            "--",
                          ),
                          const SizedBox(
                            height: 35,
                            child: MainTextInput(
                              boxDecoration: BoxDecoration(
                                  color: Color.fromARGB(255, 249, 249, 249)),
                              disabled: false,
                              placholder: "max",
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          FilledButton(
                            child: const Text(
                              "OK",
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  const MainDivider(
                    size: 160,
                    marginH: 20,
                    marginV: 20,
                  ),
                  MenuContainer(
                    title: 'EDIT',
                    icon: const Icon(
                      FluentIcons.app_icon_default_edit,
                      size: 14,
                    ),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ToggleSwitch(
                            checked: true,
                            onChanged: (x) {},
                            content: const Text("TPS"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          ToggleSwitch(
                            checked: true,
                            onChanged: (v) {},
                            content: const Text("RPM"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          ToggleSwitch(
                            checked: true,
                            onChanged: (y) {},
                            content: const Text(
                              "INJ",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const MainDivider(
                    direction: Axis.vertical,
                    size: 160,
                    marginH: 20,
                    marginV: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: MenuContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // false
                              //     ? Icon(FluentIcons.skype_circle_check,
                              //         color: Colors.green)
                              //     :
                              const Icon(
                                FluentIcons.sync_status_solid,
                                color: Color.fromARGB(90, 49, 49, 49),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              FlyoutTarget(
                                controller: FlyoutController(),
                                child: FilledButton(
                                  child: const SizedBox(
                                      width: 100, child: Text("Save Value")),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // false
                              //     ? Icon(FluentIcons.skype_circle_check,
                              //         color: Colors.green)
                              //     :
                              const Icon(
                                FluentIcons.sync_status_solid,
                                color: Color.fromARGB(90, 49, 49, 49),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              FilledButton(
                                child: const SizedBox(
                                  width: 100,
                                  child: Text("Send to ECU"),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
