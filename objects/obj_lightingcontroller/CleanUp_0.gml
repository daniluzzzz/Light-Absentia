// Clean Up Event (importante, evita vazamento de memória)
if (surface_exists(darkness_surface)) {
    surface_free(darkness_surface);
}