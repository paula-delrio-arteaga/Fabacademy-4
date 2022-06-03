# Micro challenge 4

## Interactive bioprinter ✍🏼 🌱

### Team members: 
- [Andrea Arranz](https://andrea-arranz.github.io/website/)
- [Paula del Río](https://paula-delrio-arteaga.github.io/mdef/index.html)


In this case, we team up based on our previous successful experience during the 1st challenge and a common interest in finding new ways of how humans interact with technology. Andrea is more interested in giving new agency to technological gadgets while Paula is more interested in using technology as a tool to reinvent the relationship between humans and nature. At the same time, we both found creative coding and computational drawing really interesting and a great way to interact with the subjects visually. As well, both of us will be using the technique of moulding and casting in our own individual projects. 


### Initial Idea:

- What if you could create your own prints depending on your movements? 
- What if there is a way of visualizing the way you touch a physical object?
- What if a machine draws in real-time the designs the subjects generate?

Thinking on MDEFest our aim is of turning our projects into a more co-creative collaborative project, we wanted to create a digital creative interface with processing where the subject interacts and creates its own prints depending on the way they touch the physical interface which contains a sensor. This generated artwork is turned into a series of coordinates that processing turns into g-code to be sent to the Penploter that our peers from fab academy fabricated.

### Planing

Andrea: Connect the arduino sensor to P5js, Interface noise drwaings trials, define the code, making and casting molds, laser cut box.
Paula: Planning ahead (materials), Made the ink, Make the sensor work, Make the penploter work, Design 3D penholder, making and casting molds.
Both and Josep: connecting the p5js Processing to g-code and send to the penplotter.

![plan](/Images/planing.jpeg)


### Purpose:
Our purpose is to give the subject a more engaging experience when interacting with technology and having an output that will remind us of organic shapes found in nature. Like this, we also express how our actions have an impact on nature. We are advocating for a new paradigm in which humans could use technology to consciously interact with nature for a beneficial reciprocal relationship. 

During the workshop we’ll host in MDEFest the subjects will create different designs, printed on fabrics with spirulina ink, that afterwards are gonna be laser cut into shapes for simple wearables that they could use during the Symbiátipico Party, to bring the subjects closer to the concept of being a Bioborg. Testing the alternative present bioborg proposes in a real-life eve


### System diagram:

We connected an Arduino 1 by serial monitor reading a numerical values vibration sensor, then the Arduino code was connected to Processing and associates the values of the sensor to a graphical representation. This Artwork is generated with a noise equation which we constrained to 5 loop functions with a threshold that we tested on the sensor. The output is afterwards translated into X and Y coordinates by processing that builds a G-code which is sent it by serial directly to the other Arduino which controls the Pen plotter. Having a sensation of a real-time drawing made from the interaction of the user.

![Arduino](/Images/arduino-sensor.jpg)

![diagram](/Images/system_diagram.jpg)

### Divided and conquer:

- Alginate molds of different people’s fingers that afterwards were casted on silicone to create a negative of Plaster that will allow us to cast many fingers since the alginate gives a lot of resolution but it shrinks a lot after a while. 

![Alginate](/Images/alginate-mixing.JPG)
![Alginate](/Images/alginate-mold.JPG)
![Alginate](/Images/alginate-mold-2.JPG)

- Make the sensor work on its own and understand the values. Connect the arduino to processing.

- Simultaneously we were working on the design of the interface of processing which needed most of our time, testing different drawings: 



https://user-images.githubusercontent.com/92103073/171876570-fed0ea76-d583-4755-b0d2-4a728758cf53.mp4



https://user-images.githubusercontent.com/92103073/171876705-923b5e2b-3e90-4899-a57c-c9788b2e83eb.mp4





- We aimed to use the Kraken machine that it works like a 3D printed, but the connections were misleading and we ended up using the Penploter. We first were sure how to move it and redefine the values of speed, amount of steps and the work area. 
To adjust the settings of the machine we used arduino serial monitor $$ 
![Ink](/Images/kraken.JPG)

- Make the ink and test it on the fabric and paper. 
![Ink](/Images/ink-making.JPG)
![Ink](/Images/inki-loading.JPG)
![Ink](/Images/ink-fabric.JPG)

- Design 3D printed Penholder
![Ink](/Images/3d-holder.jpg)

- Box mold for the fingers carpet:

![DEDOS](https://user-images.githubusercontent.com/92103073/171877497-156a2839-be59-4fd1-9a31-0376d2d1e7d4.jpeg)



### Find creative solutions: 

- Giving a second use to a machine already made by our peers. 
- Simplify the drawings for the machine. 


### List of material: 
- Alginate for molds
- Silicone ecoflex 50
- Dragon skin silicone
- Vibration Sensor 
- Acrylic scraps 5mm for the mat mold.
- Arduino 1 
- Fabric
- Spirulina Powder
- Goma xantana
- Benzonato sosa

### IT WORKS! 



https://user-images.githubusercontent.com/92103073/171877266-7b2d7ad6-5f17-42ee-abfc-17554f04f882.mp4



https://user-images.githubusercontent.com/92103073/171877120-94ad6241-2c18-490b-b786-031ab34dce29.mp4





### Replicability: 

All the code is uploaded on this repository but the pen plotter has its own files on the other repo. 


### It's been a pleasure: 

![bye](/Images/goodbye.gif)
