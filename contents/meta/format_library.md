---
title: Format Library
subtitle: Showcase of commonly used stylings
---

This page aims to show examples for all available formatting helpers, partials, styles, ... as a quick reference for content authors and as a testing ground for layout changes.

**Table of Content**:

- TOC
{:toc}

---

# Heading 1

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

## Heading 2

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

### Heading 3

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

#### Heading 4

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

##### Heading 5

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

---

# Blocks

## Code

This sentence contains `some inline code to showcase the formatting` used here.

~~~ruby
def hello_world(name)
  puts "Hello, #{name}!"
end
~~~

---

## Blockquote

> Meow, mew. Meooow? Mrrrrwp! Meeeeeeowwwwwwwwww... Miihihihiiauuuuu! Mrwp mrwp mjamm mjamm mjamm mjamm mjamm mjamm meeeeep!

---

## Lists

1. This is
2. a classical
3. ordered
4. and sometimes surprisingly long (because denschub is not able to write short sentences you know, so sometimes things have to deal with a lot more content than anyone would expect but thats fine)
5. list!

- This is
- another classic
- unordered
- and sometimes surprisingly long (because denschub is not able to write short sentences you know, so sometimes things have to deal with a lot more content than anyone would expect but thats fine)
- list!

1. Oh, have I told you
   - not sure
   - really should have added this... :/
2. That you can
   - *note* make sure that people don't do this too much
3. nest lists
4. as you please?

---

## Tables

| Heading        | Heading        | Heading        |
| -------------- | -------------- | -------------- |
| Some content.  | Some content.  | Some content.  |
| More content.  | More content.  | More content.  |
| Bonus content. | Bonus content. | Bonus content. |

---

## Warning/info boxes

<%= warning_box_start("success") %>

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= warning_box_end %>

<%= warning_box_start("info") %>

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= warning_box_end %>

<%= warning_box_start("warning") %>

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= warning_box_end %>

<%= warning_box_start("critical") %>

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= warning_box_end %>

---

## Multi-column contents

Please use those only when absolutely needed. :)

### Two columns

<%= row_start %>

**One**. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= col_new %>

**Two**. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= row_end %>

### Three columns

<%= row_start %>

**One**. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= col_new %>

**Two**. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= col_new %>

**Three**. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= row_end %>

### Mixed columns

<%= row_start %>

**One**. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= col_new %>

**Two**. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= col_new %>

**Three**. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= row_new %>

**One**. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= col_new %>

**Two**. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= row_new %>

**One**. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= col_new %>

**Two**. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= col_new %>

**Three**. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae sapien erat. Nullam fringilla metus justo, quis volutpat enim feugiat id.

<%= row_end %>
