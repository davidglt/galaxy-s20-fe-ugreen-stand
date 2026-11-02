# Galaxy S20 FE + UGREEN Revodok 105 Stand

A landscape desktop stand holding a Samsung Galaxy S20 FE in front of a UGREEN USB-C hub. Both devices rest at the same height in a shared open-ended channel.

## Status

Prototype. The first PETG print is in progress. Final fit, cable clearance and stability have not yet been verified on the finished part.

## Hardware

- Phone: Samsung Galaxy S20 FE, SM-G780G/DS; measured edge thickness: 8 mm.
- Hub: UGREEN Revodok 105 USB C Hub 5 in 1 USB-C to HDMI Adapter, with USB-C PD power input and HDMI; measured body thickness: 12 mm.
- Device references and measurements were provided by the owner. Compatibility with other variants is not guaranteed.
- Route side-facing cables through the open channel ends. Keep upward-facing hub ports unobstructed. Check the actual port layout of your unit before printing.

## Dimensions

All dimensions are in millimeters.

| Feature | Dimension |
| --- | ---: |
| Base length | 200 |
| Base width | 50 |
| Base thickness | 4 |
| Channel internal width | 21 |
| Wall thickness | 3 |
| Wall height above base | 12 |
| Total height | 16 |
| Channel external width | 27 |
| Base margin on each side | 11.5 |
| Entry chamfer, each inner top edge | 1 x 1 at 45 degrees |
| Channel width at chamfer opening | 23 |

The channel is centered across the base width. Both 200 mm long ends are open. There is no divider between the devices. The nominal combined device thickness is 20 mm, leaving 1 mm total clearance. Adhesive feet are fitted underneath; there are no foot recesses.

## Model

- `models/phone_ugreen_stand.scad`: editable parametric source.
- STL export will be added separately. No printer-ready G-code is included in this commit.

Open the source in OpenSCAD, render with F6, and export as STL. Alternatively:

```sh
openscad -o phone_ugreen_stand.stl models/phone_ugreen_stand.scad
```

Print with the flat base on the bed and the channel facing upward. No supports are required by the intended geometry. Check the slicer preview before printing. A short channel sample is recommended to verify clearance before printing the full length.

## Printing setup

- Original Prusa i3 MK3S; 0.4 mm nozzle; PETG.
- UltiMaker Cura 5.8.1.
- Layer height: 0.20 mm; initial layer: 0.20 mm.
- Nominal line width: 0.40 mm; wall line count: 4.
- Top layers: 6; bottom layers: 6.
- Infill: 20% gyroid.
- Nozzle setpoints: 230 C initially, then 240 C.
- Bed setpoints: 85 C initially, then 90 C.
- Fan commands in the reviewed print: off on layer 1, approximately 10% on layer 2, 20% on layer 3, 30% from layer 4 onward. Maximum fan setting: 50%.
- Print speed setting: 45 mm/s. Reviewed G-code used 22.5 mm/s for the first layer and outer walls, and 45 mm/s for normal inner walls and infill.
- Retraction: 0.8 mm at 35 mm/s; retract at layer change enabled; minimum travel: 1 mm.
- Estimated print time for the reviewed file: about 5 h 39 min; filament: 17.72 m. Actual results may differ.

These settings document this prototype, not a universal PETG profile. Respect the filament manufacturer's temperature range and the build surface instructions. Check first-layer adhesion and use an appropriate release layer if required for PETG on smooth PEI. Slice for your own printer; do not use unverified G-code.

## Validation checklist

- [ ] Print completed.
- [ ] Finished channel width measured.
- [ ] Phone and hub fit checked together.
- [ ] Side cable and upper port clearance checked.
- [ ] Stability checked with all cables connected.
- [ ] Adhesive feet installed.

## Attribution

Samsung, UGREEN and Prusa product names identify the equipment used. This project is not affiliated with those manufacturers.
