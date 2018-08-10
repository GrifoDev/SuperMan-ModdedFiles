.class final synthetic Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(D)D
    .locals 3

    iget-object v0, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$4;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$-android_graphics_ColorSpace$Rgb_107152(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$4;->$m$0(D)D

    move-result-wide v0

    return-wide v0
.end method
