.class public Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;
.super Ljava/lang/Object;
.source "MetadataInfo.java"


# instance fields
.field public dbKey:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public titleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->pkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->dbKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->titleRes:I

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->pkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->dbKey:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->titleRes:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MetadataInfo[pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dbKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->dbKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", titleRes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->titleRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
