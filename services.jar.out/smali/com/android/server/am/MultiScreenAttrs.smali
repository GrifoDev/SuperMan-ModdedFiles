.class public Lcom/android/server/am/MultiScreenAttrs;
.super Ljava/lang/Object;
.source "MultiScreenAttrs.java"


# static fields
.field public static sConstDefaultMultiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;


# instance fields
.field private mBaseActivity:Z

.field private mBaseDisplayId:I

.field private mBaseForceUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/MultiScreenAttrs;

    invoke-direct {v0}, Lcom/android/server/am/MultiScreenAttrs;-><init>()V

    sput-object v0, Lcom/android/server/am/MultiScreenAttrs;->sConstDefaultMultiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiScreenAttrs;->setBaseDisplayId(I)V

    iput-boolean v0, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseActivity:Z

    iput-boolean v0, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseForceUpdate:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MultiScreenAttrs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiScreenAttrs;->setTo(Lcom/android/server/am/MultiScreenAttrs;Z)V

    return-void
.end method


# virtual methods
.method public getBaseActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseActivity:Z

    return v0
.end method

.method public getBaseDisplayId()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseDisplayId:I

    return v0
.end method

.method public setBaseActivity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseActivity:Z

    return-void
.end method

.method public setBaseDisplayId(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseDisplayId:I

    return-void
.end method

.method public setBaseForceUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseForceUpdate:Z

    return-void
.end method

.method public setTo(Lcom/android/server/am/MultiScreenAttrs;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/am/MultiScreenAttrs;->mBaseForceUpdate:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiScreenAttrs;->setTo(Lcom/android/server/am/MultiScreenAttrs;Z)V

    return-void
.end method

.method public setTo(Lcom/android/server/am/MultiScreenAttrs;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/MultiScreenAttrs;->mBaseActivity:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p1, Lcom/android/server/am/MultiScreenAttrs;->mBaseActivity:Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiScreenAttrs;->setBaseActivity(Z)V

    invoke-virtual {p1}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiScreenAttrs;->setBaseDisplayId(I)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/server/am/MultiScreenAttrs;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mBaseDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mBaseActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
