# Micro challenge 4

## Interactive bioprinter ✍🏼 🌱

### Team members: 
- [Andrea Arranz](https://andrea-arranz.github.io/website/)
- [Paula del Río](https://paula-delrio-arteaga.github.io/mdef/index.html)


In this case, we team up based on our previous successful experience during the 1st challenge and a common interest in finding new ways of how humans interact with technology. Andrea is more interested in giving new agency to technological gadgets while Paula is more interested in using technology as a tool to reinvent the relationship between humans and nature. At the same time, we both found creative coding and computational drawing really interesting and a great way to interact with the subjects visually. As well, both of us will be using the technique of moulding and casting in our own individual projects. 


#### Initial Idea:

- What if you could create your own prints depending on your movements? 
- What if there is a way of visualizing the way you touch a physical object?
- What if a machine draws in real-time the designs the subjects generate?

Thinking on MDEFest our aim is of turning our projects into a more co-creative collaborative project, we wanted to create a digital creative interface with processing where the subject interacts and creates its own prints depending on the way they touch the physical interface which contains a sensor. This generated artwork is turned into a series of coordinates that processing turns into g-code to be sent to the Penploter that our peers from fab academy fabricated.

#### Planing

![plan](/Images/planing.jpeg)


#### Purpose:
Our purpose is to give the subject a more engaging experience when interacting with technology and having an output that will remind us of organic shapes found in nature. Like this, we also express how our actions have an impact on nature. We are advocating for a new paradigm in which humans could use technology to consciously interact with nature for a beneficial reciprocal relationship. 

During the workshop we’ll host in MDEFest the subjects will create different designs, printed on fabrics with spirulina ink, that afterwards are gonna be laser cut into shapes for simple wearables that they could use during the Symbiátipico Party, to bring the subjects closer to the concept of being a Bioborg. Testing the alternative present bioborg proposes in a real-life eve


#### System diagram:

We connected an Arduino 1 by serial monitor reading a numerical values vibration sensor, then the Arduino code was connected to Processing and associates the values of the sensor to a graphical representation. This Artwork is generated with a noise equation which we constrained to 5 loop functions with a threshold that we tested on the sensor. The output is afterwards translated into X and Y coordinates by processing that builds a G-code which is sent it by serial directly to the other Arduino which controls the Pen plotter. Having a sensation of a real-time drawing made from the interaction of the user.

