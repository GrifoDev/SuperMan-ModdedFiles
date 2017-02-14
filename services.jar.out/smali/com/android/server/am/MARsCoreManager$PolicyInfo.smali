.class final Lcom/android/server/am/MARsCoreManager$PolicyInfo;
.super Ljava/lang/Object;
.source "MARsCoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsCoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PolicyInfo"
.end annotation


# instance fields
.field final action:I

.field public enabled:I

.field public firstTriggerTime:J

.field final name:Ljava/lang/String;

.field final num:I

.field public repeatTriggerTime:J

.field final restriction:I

.field final targetCategory:I

.field final synthetic this$0:Lcom/android/server/am/MARsCoreManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsCoreManager;Ljava/lang/String;IIIIIJJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->this$0:Lcom/android/server/am/MARsCoreManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->name:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->num:I

    iput p4, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->enabled:I

    iput p5, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->targetCategory:I

    iput p6, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->restriction:I

    iput p7, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->action:I

    iput-wide p8, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->firstTriggerTime:J

    iput-wide p10, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->repeatTriggerTime:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->enabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", targetCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->targetCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", restriction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->restriction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", firstTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->firstTriggerTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", repeatTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->repeatTriggerTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
