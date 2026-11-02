# Printing setup and prototype test log

## Test status

First prototype print in progress on 2026-11-02. Completion, final dimensions, fit and stability remain unverified. The owner will provide the result and a finished-part photograph after printing. No finished-part photograph is available yet.

## Printer and software

| Item | Recorded value |
| --- | --- |
| Manufacturer | Prusa Research |
| Printer | Original Prusa i3 MK3S |
| Firmware | 3.14.1, last reported by the owner |
| Firmware update status | An update was considered; no completed update or newer version has been confirmed |
| Nozzle diameter | 0.4 mm |
| Material | PETG; brand and product not recorded |
| Slicer | UltiMaker Cura 5.8.1 |
| G-code generator | Cura_SteamEngine 5.8.1 |
| Cura machine definition | prusa_i3_mk3; target display name: Prusa i3 Mk3/Mk3s |
| Cura profile | MK3S_0.4_PETG_0.20_Draft_loco |
| Transfer method | SD card |
| Reviewed G-code filename | PI3MK3M_phone_ugreen_stand_200x50.gcode |

OpenSCAD source is included in the repository. No OpenSCAD version was recorded, and the source was not used as the slicer.

## Settings recorded in the reviewed G-code

The entries below distinguish saved slicer settings from emitted commands. Proposed settings that were not confirmed in the final file are not presented as actual print settings.

| Parameter | Value |
| --- | --- |
| Layer height | 0.20 mm |
| First-layer height | 0.20 mm |
| Layer count | 80 |
| Final printing height | 16.00 mm |
| Wall line count setting | 4; actual paths vary with available wall width and chamfers |
| Top layers | 6; nominal thickness 1.20 mm |
| Bottom layers | 6; nominal thickness 1.20 mm |
| Infill | 20% gyroid |
| Initial nozzle target | 230 C |
| Subsequent nozzle target | 240 C; command issued at the end of the first layer |
| Initial bed target | 85 C |
| Subsequent bed target | 90 C; command issued on the second layer |
| Print speed setting | 45 mm/s |
| First-layer extrusion speed observed | 22.5 mm/s |
| Normal outer-wall speed observed | 22.5 mm/s |
| Normal inner-wall speed observed | 45 mm/s |
| Normal infill speed observed | 45 mm/s |
| Typical travel speed observed | 120 mm/s |
| Retraction distance observed | 0.8 mm |
| Retraction speed observed | 35 mm/s |
| Retract at layer change | Enabled |
| Retraction minimum travel | 1 mm |
| Bed adhesion helper observed | Skirt |
| Estimated time | 20,356 seconds, approximately 5 h 39 min |
| Estimated filament length | 17.7178 m |

Times and filament use are slicer estimates, not measured results. The full Cura project and G-code are not included in this document.

## Part cooling

| Physical printed layer | Emitted fan command | Approximate duty |
| --- | --- | --- |
| 1 | M107 | 0% |
| 2 | M106 S25.5 | 10% |
| 3 | M106 S51 | 20% |
| 4 onward | M106 S76.5 | 30% |

The saved regular fan setting is 30%, maximum fan setting is 50%, and full regular fan speed is reached on physical layer 4. The reviewed file does not request 50% during this print.

## Start and end sequences

The reviewed file waits for the initial nozzle and bed targets, homes using G28 W, performs mesh bed leveling with G80, and prints an introductory purge line.

At the end, it retracts, turns off the heaters and part-cooling fan, parks at X0 Y210 and disables the motors. No Z lift precedes that final parking move in the reviewed file. A Z lift was suggested but has not been confirmed as implemented.

## Reported environment and observations

- Reported temperature around the printer: 25 C.
- The owner reported a plastic enclosure around the printer; its construction and safety have not been verified. This is an observation, not a recommended enclosure design.
- The in-progress photograph shows a broadly regular gyroid pattern and continuous visible borders. It does not establish full-bed adhesion or final print quality.
- The printer display showed 240/240 C nozzle temperature, 90/90 C bed temperature, Z = 3.00 mm, and a 100% speed multiplier in the supplied display photograph.
- Build-sheet type and PETG brand remain unconfirmed. Follow the filament manufacturer's temperature range and the build-sheet instructions.

## Pending completion report

- [ ] Record success or failure and any defects.
- [ ] Record actual elapsed print time, if available.
- [ ] Measure the finished channel width.
- [ ] Check simultaneous phone and hub fit.
- [ ] Check HDMI, USB and PD cable clearance against the actual hub layout.
- [ ] Check stability with all cables connected.
- [ ] Record adhesive feet installation, if fitted.
- [ ] Add an owner-approved photograph of the finished part and update the README.

Do not treat the prototype as validated until the owner reports the outcome. Slice for the actual printer configuration; these settings are a record of this test, not a universal PETG prescription.
