.class public final Landroid/service/power/PowerServiceDumpProto$ActiveWakeLocksProto;
.super Ljava/lang/Object;
.source "PowerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/power/PowerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActiveWakeLocksProto"
.end annotation


# static fields
.field public static final IS_BUTTON_BRIGHT:J = 0x10d00000004L

.field public static final IS_CPU:J = 0x10d00000001L

.field public static final IS_DOZE:J = 0x10d00000007L

.field public static final IS_DRAW:J = 0x10d00000008L

.field public static final IS_PROXIMITY_SCREEN_OFF:J = 0x10d00000005L

.field public static final IS_SCREEN_BRIGHT:J = 0x10d00000002L

.field public static final IS_SCREEN_DIM:J = 0x10d00000003L

.field public static final IS_STAY_AWAKE:J = 0x10d00000006L


# instance fields
.field final synthetic this$0:Landroid/service/power/PowerServiceDumpProto;


# direct methods
.method public constructor <init>(Landroid/service/power/PowerServiceDumpProto;)V
    .locals 0

    iput-object p1, p0, Landroid/service/power/PowerServiceDumpProto$ActiveWakeLocksProto;->this$0:Landroid/service/power/PowerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
