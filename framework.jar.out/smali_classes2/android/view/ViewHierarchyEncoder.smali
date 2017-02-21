.class public Landroid/view/ViewHierarchyEncoder;
.super Ljava/lang/Object;
.source "ViewHierarchyEncoder.java"


# static fields
.field private static final SIG_BOOLEAN:B = 0x5at

.field private static final SIG_BYTE:B = 0x42t

.field private static final SIG_DOUBLE:B = 0x44t

.field private static final SIG_END_MAP:S = 0x0s

.field private static final SIG_FLOAT:B = 0x46t

.field private static final SIG_INT:B = 0x49t

.field private static final SIG_LONG:B = 0x4at

.field private static final SIG_MAP:B = 0x4dt

.field private static final SIG_SHORT:B = 0x53t

.field private static final SIG_STRING:B = 0x52t


# instance fields
.field private mCharset:Ljava/nio/charset/Charset;

.field private mPropertyId:S

.field private final mPropertyNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private final mStream:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    const/4 v0, 0x1

    iput-short v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    const-string/jumbo v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mCharset:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    return-void
.end method

.method private createPropertyIndex(Ljava/lang/String;)S
    .locals 3

    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    if-nez v0, :cond_0

    iget-short v1, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method

.method private endPropertyMap()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    return-void
.end method

.method private startPropertyMap()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeBoolean(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v2, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeFloat(F)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeInt(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeShort(S)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeString(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v4, 0x52

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v3, p0, Landroid/view/ViewHierarchyEncoder;->mCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v3, v0

    const/16 v4, 0x7fff

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-short v2, v3

    iget-object v3, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v3, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;F)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeFloat(F)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeInt(I)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;S)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeBoolean(Z)V

    return-void
.end method

.method public addPropertyKey(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    return-void
.end method

.method public beginObject(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->startPropertyMap()V

    const-string/jumbo v0, "meta:__name__"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "meta:__hash__"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public endObject()V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->endPropertyMap()V

    return-void
.end method

.method public endStream()V
    .locals 4

    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->startPropertyMap()V

    const-string/jumbo v2, "__name__"

    const-string/jumbo v3, "propertyIndex"

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-direct {p0, v2}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/view/ViewHierarchyEncoder;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->endPropertyMap()V

    return-void
.end method
