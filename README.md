# С++ Project Template
Template for a C++ project.

# Instant start using Codespaces

This repository provides integration with [Codespaces](https://github.com/features/codespaces).

**Just click the `<> Code` button, then click the `Codespaces` tab and then click the `Create codespace on main` button.**

All things needed for development will be configured automatically.

Refer to `Getting started with Visual Studio Code` if you want the same experience on your own machine.

# Getting started with Visual Studio Code

1. Install Visual Studio Code with the following extensions:
  ms-vscode-remote.remote-containers (mandatory)
  ms-vscode-remote.remote-wsl (if you are using WSL on Windows)

2. Install GitHub CLI.
  https://github.com/cli/cli#installation

3. Login into your GitHub account using HTTPS:
```
gh auth login
```

4. Clone this repository or your own fork to a folder.

5. Open the folder using the following VSC command:
```
>Dev Containers: Open Folder in Container...
```

# Getting started with commands

## Configure

```
cmake -G Ninja -S . -B build -DCMAKE_TOOLCHAIN_FILE=toolchain/<Toolchain> -DCMAKE_BUILD_TYPE=<Build type>
```

Where:
* Build type - `Debug` | `Release` | `MinSizeRel` | `RelWithDebInfo`.
* Toolchain - see the `toolchain` folder. Example: `ubuntu_llvm.cmake`.

## Build

```
cmake --build build
```

## Test

```
ctest --extra-verbose --test-dir build
```

# Known issues

* Start of a codespace or a local VSC takes 10+ min.
