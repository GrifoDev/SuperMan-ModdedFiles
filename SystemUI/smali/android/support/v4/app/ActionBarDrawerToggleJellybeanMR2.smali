.class Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleJellybeanMR2.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation


# static fields
.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101030b

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;->THEME_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    :cond_0
    return-object p0
.end method
