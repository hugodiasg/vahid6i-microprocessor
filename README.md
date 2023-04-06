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

<img src="https://user-images.githubusercontent.com/80465879/228379555-ff2255a5-49d2-4142-ae36-4e472c4b6562.png" width="800h" >

#### Layout

<img src="https://user-images.githubusercontent.com/80465879/228379957-f285fc67-3ca5-4dd2-88d6-6cde5ba81787.png" width="800h" >

#### Specs

Name | Value
--------- | ------:
Number of pins | 80
Area | 0.062 mm²
Max. freq. |  Hz

### 8 Bits Microprocessor

Here are the information about the RTL Diagram, layout and maximum clock frequency.

#### RTL Diagram

<img src="https://user-images.githubusercontent.com/80465879/230414153-51d1facc-adf8-4e9f-935b-2fd79852b486.png" width="800h" >

#### Layout

<img src="https://user-images.githubusercontent.com/80465879/230413767-720b84a8-2e50-4b70-bcd1-7164395dee97.png" width="800h" >

#### Specs

Name | Value
--------- | ------:
Number of pins | 50
Area | 0.038 mm²
Max. freq. |  Hz
