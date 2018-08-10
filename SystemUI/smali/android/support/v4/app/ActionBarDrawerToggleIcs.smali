.class Landroid/support/v4/app/ActionBarDrawerToggleIcs;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleIcs.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;
    }
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

    sput-object v0, Landroid/support/v4/app/ActionBarDrawerToggleIcs;->THEME_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 7

    if-nez p0, :cond_0

    new-instance p0, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;

    invoke-direct {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    :cond_0
    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;

    iget-object v3, v2, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v3, v2, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ActionBarDrawerToggle"

    const-string/jumbo v4, "Couldn\'t set content description via JB-MR2 API"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
