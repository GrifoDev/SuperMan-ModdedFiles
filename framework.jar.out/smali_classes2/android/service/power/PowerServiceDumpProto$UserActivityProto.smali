.class public final Landroid/service/power/PowerServiceDumpProto$UserActivityProto;
.super Ljava/lang/Object;
.source "PowerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/power/PowerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserActivityProto"
.end annotation


# static fields
.field public static final IS_SCREEN_BRIGHT:J = 0x10d00000001L

.field public static final IS_SCREEN_DIM:J = 0x10d00000002L

.field public static final IS_SCREEN_DREAM:J = 0x10d00000003L


# instance fields
.field final synthetic this$0:Landroid/service/power/PowerServiceDumpProto;


# direct methods
.method public constructor <init>(Landroid/service/power/PowerServiceDumpProto;)V
    .locals 0

    iput-object p1, p0, Landroid/service/power/PowerServiceDumpProto$UserActivityProto;->this$0:Landroid/service/power/PowerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
