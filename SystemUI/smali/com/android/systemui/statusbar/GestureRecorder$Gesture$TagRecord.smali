.class public Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;
.super Lcom/android/systemui/statusbar/GestureRecorder$Gesture$Record;
.source "GestureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/GestureRecorder$Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagRecord"
.end annotation


# instance fields
.field public info:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/GestureRecorder$Gesture;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;->this$1:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$Record;-><init>(Lcom/android/systemui/statusbar/GestureRecorder$Gesture;)V

    iput-wide p2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;->time:J

    iput-object p4, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;->tag:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;->info:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "{\"type\":\"tag\", \"time\":%d, \"tag\":\"%s\", \"info\":\"%s\"}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;->tag:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;->info:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
