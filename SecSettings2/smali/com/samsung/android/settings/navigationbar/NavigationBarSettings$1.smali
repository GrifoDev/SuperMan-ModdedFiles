.class Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;
.super Ljava/lang/Object;
.source "NavigationBarSettings.java"

# interfaces
.implements Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSet(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->setRecentlyUsedColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-wrap1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    return-void
.end method
