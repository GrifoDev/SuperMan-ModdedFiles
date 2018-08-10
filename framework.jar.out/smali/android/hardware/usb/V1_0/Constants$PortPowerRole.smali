.class public final Landroid/hardware/usb/V1_0/Constants$PortPowerRole;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PortPowerRole"
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NUM_POWER_ROLES:I = 0x3

.field public static final SINK:I = 0x2

.field public static final SOURCE:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/hardware/usb/V1_0/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/V1_0/Constants;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/usb/V1_0/Constants$PortPowerRole;->this$0:Landroid/hardware/usb/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
