---
layout: page
---

These are supplementary materials for \[1\].

\[1\]: G. Ya. Dynnikova, Ya. A. Dynnikov. Method of Viscous Dipole Domains (VDD) for simulation of three-dimensional flows of viscous incompressible fluid. Physical mechanism of instability.

Abstract: The VDD method is a kind of the Lagrangian impulse-particle method using the Diffusion Velocity Method (DVM) and the Particle Strength Exchange (PSE). We prefer to call particles as domains because a particle is associated with a concrete volume of fluid and moves with its velocity. When using diffusion velocity, we track a reference point that moves relative to the fluid. We assign this point a volume equal to the inverse density of points near it. This paper presents a detailed description of the method. The physical mechanism underlying the onset and evolution of numerical instability, which reflect the underlying physics of turbulent cascades, is revealed. A numerical stability criterion consistent with Kolmogorov scaling is derived. A new model for the diffusive motion of particles is proposed, ensuring a more uniform spatial distribution. The application of the developed method is demonstrated through numerical simulations of the evolution of vortex rings.

## Instability of a simulation

<iframe width="100%" height="390" src="https://www.youtube.com/embed/ul8vH740iEc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The same animation on [Rutube](https://rutube.ru/video/private/b228786e78330b31b67abdc8bf275138/?p=wPSGGHE68j4wtT0SfD2Zeg).


## The Atlas of Dipoles Interaction

The next animations demonstrate pairwise interactions of dipole particles. Click "Play" button below each gif. For all casess except the last one the motion occurs in a plane.

{% for animation in site.data.animations %}
{% include pausable-gif.html basename=animation.basename %}
{% endfor %}
