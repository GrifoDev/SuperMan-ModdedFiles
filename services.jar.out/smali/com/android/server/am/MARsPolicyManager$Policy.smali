.class final Lcom/android/server/am/MARsPolicyManager$Policy;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Policy"
.end annotation


# instance fields
.field final action:I

.field public enabled:Z

.field final name:Ljava/lang/String;

.field final num:I

.field final restriction:I

.field public targetCategory:I

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    iput-boolean p4, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    iput p5, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->targetCategory:I

    iput p6, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->restriction:I

    iput p7, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
