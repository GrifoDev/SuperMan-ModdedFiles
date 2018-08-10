.class Lcom/samsung/android/server/virtualspace/VSScreen$Value;
.super Ljava/lang/Object;
.source "VSScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/virtualspace/VSScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMsg:I

.field private mMuted:Z

.field private final mName:Ljava/lang/String;

.field private mUpdated:Z

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/server/virtualspace/VSScreen;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ITT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->this$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mMsg:I

    iput-object p4, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public mute(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mMuted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallback()V

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mMuted:Z

    return-void
.end method

.method public notifyCallback()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mUpdated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallbackForce()V

    :cond_0
    return-void
.end method

.method public notifyCallbackForce()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mMuted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mUpdated:Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->this$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mMsg:I

    invoke-static {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->-wrap2(Lcom/samsung/android/server/virtualspace/VSScreen;I)V

    :cond_0
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->this$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-static {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->-wrap0(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->this$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value updated from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->-wrap1(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mValue:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mUpdated:Z

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallbackForce()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->this$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-static {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->-wrap0(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
