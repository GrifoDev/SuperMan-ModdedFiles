.class public final Landroid/service/power/PowerServiceDumpProto$UidProto;
.super Ljava/lang/Object;
.source "PowerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/power/PowerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidProto"
.end annotation


# static fields
.field public static final IS_ACTIVE:J = 0x10d00000003L

.field public static final IS_PROCESS_STATE_UNKNOWN:J = 0x10d00000005L

.field public static final NUM_WAKE_LOCKS:J = 0x10300000004L

.field public static final PROCESS_STATE:J = 0x11000000006L

.field public static final PROCESS_STATE_BACKUP:I = 0x8

.field public static final PROCESS_STATE_BOUND_FOREGROUND_SERVICE:I = 0x3

.field public static final PROCESS_STATE_CACHED_ACTIVITY:I = 0xe

.field public static final PROCESS_STATE_CACHED_ACTIVITY_CLIENT:I = 0xf

.field public static final PROCESS_STATE_CACHED_EMPTY:I = 0x10

.field public static final PROCESS_STATE_FOREGROUND_SERVICE:I = 0x4

.field public static final PROCESS_STATE_HEAVY_WEIGHT:I = 0x9

.field public static final PROCESS_STATE_HOME:I = 0xc

.field public static final PROCESS_STATE_IMPORTANT_BACKGROUND:I = 0x7

.field public static final PROCESS_STATE_IMPORTANT_FOREGROUND:I = 0x6

.field public static final PROCESS_STATE_LAST_ACTIVITY:I = 0xd

.field public static final PROCESS_STATE_NONEXISTENT:I = 0x11

.field public static final PROCESS_STATE_PERSISTENT:I = 0x0

.field public static final PROCESS_STATE_PERSISTENT_UI:I = 0x1

.field public static final PROCESS_STATE_RECEIVER:I = 0xb

.field public static final PROCESS_STATE_SERVICE:I = 0xa

.field public static final PROCESS_STATE_TOP:I = 0x2

.field public static final PROCESS_STATE_TOP_SLEEPING:I = 0x5

.field public static final UID:J = 0x10300000001L

.field public static final UID_STRING:J = 0x10e00000002L


# instance fields
.field final synthetic this$0:Landroid/service/power/PowerServiceDumpProto;


# direct methods
.method public constructor <init>(Landroid/service/power/PowerServiceDumpProto;)V
    .locals 0

    iput-object p1, p0, Landroid/service/power/PowerServiceDumpProto$UidProto;->this$0:Landroid/service/power/PowerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
