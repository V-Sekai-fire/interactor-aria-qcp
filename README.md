# interactor-aria-qcp

An Elixir implementation of the quaternion characteristic polynomial method for the optimal rotation and translation between two point sets.

## What it is for

It aligns one set of 3D points to another in the least-squares sense, with optional per-point weights and an option to solve for rotation alone. The method follows Theobald (2005) and Liu, Agrafiotis and Theobald (2010); the module docs describe the API.

## Build and run

    mix deps.get
    mix test

## Licence

MIT; see `LICENSE`.
