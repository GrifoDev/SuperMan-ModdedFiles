.class public final Landroid/os/PersistableBundle;
.super Landroid/os/BaseBundle;
.source "PersistableBundle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;
.implements Lcom/android/internal/util/XmlUtils$WriteMapCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PersistableBundle$1;,
        Landroid/os/PersistableBundle$MyReadMapCallback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/os/PersistableBundle;

.field private static final TAG_PERSISTABLEMAP:Ljava/lang/String; = "pbundle_as_map"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    sput-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v1, v0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/PersistableBundle$1;

    invoke-direct {v0}, Landroid/os/PersistableBundle$1;-><init>()V

    sput-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Bundle;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    iget v0, p1, Landroid/os/PersistableBundle;->mFlags:I

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    return-void
.end method

.method private constructor <init>(Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    const/4 v3, 0x1

    iput v3, p0, Landroid/os/PersistableBundle;->mFlags:I

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->putAll(Landroid/util/ArrayMap;)V

    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/util/ArrayMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    new-instance v4, Landroid/os/PersistableBundle;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-direct {v4, v2}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    new-instance v4, Landroid/os/PersistableBundle;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v4, v2}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v2}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad value in PersistableBundle key="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " value="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Z)V

    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 2

    new-instance v0, Landroid/os/PersistableBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isValidType(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, [I

    if-nez v0, :cond_0

    instance-of v0, p0, [J

    if-nez v0, :cond_0

    instance-of v0, p0, [D

    if-nez v0, :cond_0

    instance-of v0, p0, [Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, [Z

    goto :goto_0
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v5, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_2

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    new-instance v4, Landroid/os/PersistableBundle;

    new-instance v5, Landroid/os/PersistableBundle$MyReadMapCallback;

    invoke-direct {v5}, Landroid/os/PersistableBundle$MyReadMapCallback;-><init>()V

    invoke-static {p0, v2, v3, v5}, Lcom/android/internal/util/XmlUtils;->readThisArrayMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;)V

    return-object v4

    :cond_2
    sget-object v4, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    return-object v4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public deepCopy()Landroid/os/PersistableBundle;
    .locals 2

    new-instance v0, Landroid/os/PersistableBundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/PersistableBundle;->copyInternal(Landroid/os/BaseBundle;Z)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    iget-object v2, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/PersistableBundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Bundle"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/PersistableBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v3
.end method

.method public putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    return-void
.end method

.method public declared-synchronized toShortString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EMPTY_PARCEL"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PersistableBundle[EMPTY_PARCEL]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PersistableBundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PersistableBundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    throw v1
.end method

.method public writeUnknownObject(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    instance-of v0, p1, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pbundle_as_map"

    invoke-interface {p3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "name"

    invoke-interface {p3, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p1, p3}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v0, "pbundle_as_map"

    invoke-interface {p3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown Object o="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
