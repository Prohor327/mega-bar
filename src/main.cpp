#include <gtk-3.0/gtk/gtk.h>

static int destroy_app()
{
    exit(0);
}

void activate()
{
    GtkWidget *window;

    window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_widget_realize(window);
    gtk_widget_set_name(window, "window");
    gtk_window_set_default_size(GTK_WINDOW(window), 100, 100);
    gtk_window_resize(GTK_WINDOW(window), 100, 100);
    gtk_window_set_resizable(GTK_WINDOW(window), FALSE);
    gtk_window_set_decorated(GTK_WINDOW(window), FALSE);
    gtk_widget_show(window);
    gtk_window_move(GTK_WINDOW(window), (gint)1000, (gint)1000);

    g_signal_connect(window, "destroy", G_CALLBACK(destroy_app), NULL);
}

int main (int argc, char **argv)
{
    gtk_init(&argc, &argv);

    activate();
    gtk_main();

    return 0;
}