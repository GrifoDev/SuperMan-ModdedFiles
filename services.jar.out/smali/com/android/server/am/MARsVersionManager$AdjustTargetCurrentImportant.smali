.class public Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;
.super Ljava/lang/Object;
.source "MARsVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsVersionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdjustTargetCurrentImportant"
.end annotation


# instance fields
.field public importantValue:I

.field public policyNum:I

.field final synthetic this$0:Lcom/android/server/am/MARsVersionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsVersionManager;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;->this$0:Lcom/android/server/am/MARsVersionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;->policyNum:I

    iput p3, p0, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;->importantValue:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AdjustTargetCurrentImportant: policyNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;->policyNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", importantValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;->importantValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
