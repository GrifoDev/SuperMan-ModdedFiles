.class public final Landroid/service/power/WakeLockProto$WakeLockFlagsProto;
.super Ljava/lang/Object;
.source "WakeLockProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/power/WakeLockProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeLockFlagsProto"
.end annotation


# static fields
.field public static final IS_ACQUIRE_CAUSES_WAKEUP:J = 0x10d00000001L

.field public static final IS_ON_AFTER_RELEASE:J = 0x10d00000002L


# instance fields
.field final synthetic this$0:Landroid/service/power/WakeLockProto;


# direct methods
.method public constructor <init>(Landroid/service/power/WakeLockProto;)V
    .locals 0

    iput-object p1, p0, Landroid/service/power/WakeLockProto$WakeLockFlagsProto;->this$0:Landroid/service/power/WakeLockProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
