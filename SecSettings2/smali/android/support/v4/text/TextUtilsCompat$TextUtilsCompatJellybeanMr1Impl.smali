.class Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;
.super Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
.source "TextUtilsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextUtilsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextUtilsCompatJellybeanMr1Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>(Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 1
    .param p1    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompatJellybeanMr1;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method
