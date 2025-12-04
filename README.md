<div align="center">

  <img src="https://img.shields.io/badge/language-C-blue.svg" alt="Language">
  <img src="https://img.shields.io/badge/42-School-lightgrey.svg" alt="42 School">
  <img src="https://img.shields.io/badge/status-active-green.svg" alt="Status">

</div>

## About

This repository contains `libft`, a collection of C functions commonly reimplemented as part of the 42 School curriculum. It provides a static library (`libft.a`) with string and memory utilities, conversions, basic I/O helpers, and additional utilities such as `get_next_line` and a repository-specific `ft_printf`.

`libft` is intended to be used as a foundation for other C projects and exercises.

## Highlights

- Static library: `libft.a` produced by the supplied `Makefile`.
- Public header in `include/`.
- Source files in `src/`.
- Extras: `get_next_line` and `ft_printf` implementations (as present in `src/`).

## Build

The repository includes a `Makefile` with standard targets. From the repository root:

```bash
# Build the static library (creates libft.a)
make

# Remove object files
make clean

# Remove object files and library
make fclean

# Rebuild (fclean + make)
make re
```

After running `make`, `libft.a` will be available in the project root (or according to your Makefile rules).

## Usage (linking the library)

Compile a program that uses `libft` like this:

```bash
# Example: compile main.c using the local libft
gcc -I include -L. -lft main.c -o myprog

# Or link the static archive directly
gcc -I include main.c ./libft.a -o myprog
```

Be sure to add `-I include` so the compiler finds `libft.h`.

## Implemented functions (summary)

The project implements many functions. Key categories include:

- Character checks: `ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isascii`, `ft_isprint`, `ft_tolower`, `ft_toupper`.
- String manipulation: `ft_strlen`, `ft_strlcpy`, `ft_strlcat`, `ft_strdup`, `ft_substr`, `ft_strjoin`, `ft_strtrim`, `ft_split`, `ft_strncmp`, `ft_strnstr`, `ft_strchr`, `ft_strrchr`, `ft_striteri`, `ft_strmapi`, `ft_strcmp`.
- Conversion / formatting: `ft_atoi`, `ft_itoa`, `ft_printf` (as implemented in this repo).
- Memory: `ft_memset`, `ft_bzero`, `ft_memcpy`, `ft_memmove`, `ft_memchr`, `ft_memcmp`, `ft_calloc`.
- I/O helpers: `ft_putchar_fd`, `ft_putstr_fd`, `ft_putendl_fd`, `ft_putnbr_fd`, and `ft_printf` utilities.
- Extras: `get_next_line` and its helpers.

For the full list, check `include/libft.h` and the source files in `src/`.

## Project structure

```
./
├── include/        # public header (libft.h)
├── src/            # implementation (*.c)
├── Makefile        # build rules
├── libft.a         # (generated after make)
└── README.md       # this file
```

## Tests & memory checks

Use Valgrind to check for memory leaks when testing programs that use the library:

```bash
valgrind --leak-check=full --show-leak-kinds=all ./myprog
```

Test edge cases such as empty strings, NULL pointers where applicable, large inputs, and integer boundary conditions.

## License

For academic and personal use. If you reuse code, attribute authorship and follow your institution's rules.

---

This README was adapted from the project base. If you want a shorter version, badges, or a usage example added, tell me what to include and I'll update it.
