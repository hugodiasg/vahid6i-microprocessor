### Microprocessor
The 6 instructions microprocessor is based on the architecture of chapter 8.4 of VAHID, Frank. Sistemas digitais: projeto, otimização e HDLs. 

<img src="https://user-images.githubusercontent.com/80465879/228121315-ee3245db-e1bc-4f31-a2cf-df98102a244e.png" width="800h" >

<img src="https://user-images.githubusercontent.com/80465879/228124099-325b6887-cfce-4a94-a15f-736de8f6da07.png" width="800h" >


### Repository divison

There are two microprocessors in this repo, one which work with **16 bits** and other which work with **8 bits**. This second are a modification of the original architecture of chapter 8.4. Both microprocessor was developed with:
- GHDL to simulation of VHDL files;
- GTKWave to analyze the waves;
- Yosys-GHDL-plugin to convert VHDL files to Verilog;
- Openlane to run the flow RTL -> GDSII.
- Magic VLSI to see the layout.

### 16 Bits Microprocessor

Here are the information about the RTL Diagram, layout and maximum clock frequency.

#### RTL Diagram

<img src="https://user-images.githubusercontent.com/80465879/232316680-312cb2c2-b6b6-48ea-8c8e-1a4bbd2f3556.png" width="800h" >

#### Layout

<img src="https://user-images.githubusercontent.com/80465879/232316036-2147de3c-6a65-48a9-8c9d-328f5d807efe.png" width="800h" >

#### Specs

Name | Value
--------- | ------:
Number of pins | 80
Area | 0.065 mm² (249.555 x 260.275 μm)
Max. freq. |  Hz

### 8 Bits Microprocessor

Here are the information about the RTL Diagram, layout and maximum clock frequency.

#### RTL Diagram

<img src="https://user-images.githubusercontent.com/80465879/232316834-42f0ef7f-a9e5-4305-97e4-049f0536c91f.png" width="800h" >

#### Layout

<img src="https://user-images.githubusercontent.com/80465879/232316628-0d7ebab1-255b-4fc7-bbcf-994ff6b012b3.png" width="800h" >

#### Specs

Name | Value
--------- | ------:
Number of pins | 50
Area | 0.038 mm² (189.680 x 200.400 μm)
Max. freq. |  Hz

### Next Steps...
- Add shift registers to reduce number of pins;
- Send the design to Tiny Tapeout.
