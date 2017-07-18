.class public Lsun/security/x509/GeneralSubtrees;
.super Ljava/lang/Object;
.source "GeneralSubtrees.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final NAME_DIFF_TYPE:I = -0x1

.field private static final NAME_MATCH:I = 0x0

.field private static final NAME_NARROWS:I = 0x1

.field private static final NAME_SAME_TYPE:I = 0x3

.field private static final NAME_WIDENS:I = 0x2


# instance fields
.field private final trees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of GeneralSubtrees."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :goto_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    new-instance v1, Lsun/security/x509/GeneralSubtree;

    invoke-direct {v1, v0}, Lsun/security/x509/GeneralSubtree;-><init>(Lsun/security/util/DerValue;)V

    invoke-virtual {p0, v1}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(Lsun/security/x509/GeneralSubtrees;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    return-void
.end method

.method private createWidestSubtree(Lsun/security/x509/GeneralNameInterface;)Lsun/security/x509/GeneralSubtree;
    .locals 6

    :try_start_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported GeneralNameInterface type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_0
    :try_start_1
    check-cast p1, Lsun/security/x509/OtherName;

    invoke-virtual {p1}, Lsun/security/x509/OtherName;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/OtherName;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/ObjectIdentifier;[B)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    :goto_0
    new-instance v3, Lsun/security/x509/GeneralSubtree;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v3, v1, v4, v5}, Lsun/security/x509/GeneralSubtree;-><init>(Lsun/security/x509/GeneralName;II)V

    return-object v3

    :pswitch_1
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/RFC822Name;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/DNSName;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v4, Lsun/security/x509/X400Address;

    const/4 v3, 0x0

    nop

    nop

    invoke-direct {v4, v3}, Lsun/security/x509/X400Address;-><init>([B)V

    invoke-direct {v1, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/X500Name;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/EDIPartyName;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/EDIPartyName;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/URIName;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    goto :goto_0

    :pswitch_7
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v4, Lsun/security/x509/IPAddressName;

    const/4 v3, 0x0

    nop

    nop

    invoke-direct {v4, v3}, Lsun/security/x509/IPAddressName;-><init>([B)V

    invoke-direct {v1, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v4, Lsun/security/x509/OIDName;

    new-instance v5, Lsun/security/util/ObjectIdentifier;

    const/4 v3, 0x0

    nop

    nop

    invoke-direct {v5, v3}, Lsun/security/util/ObjectIdentifier;-><init>([I)V

    invoke-direct {v4, v5}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-direct {v1, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    return-object v0
.end method

.method private static getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;
    .locals 2

    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    return-object v1
.end method

.method private minimize()V
    .locals 6

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-direct {p0, v1}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    const/4 v3, 0x0

    add-int/lit8 v2, v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-direct {p0, v2}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    invoke-interface {v0, v4}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x1

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    add-int/lit8 v2, v2, -0x1

    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public add(Lsun/security/x509/GeneralSubtree;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v0, p0}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/x509/GeneralSubtrees;)V

    return-object v0
.end method

.method public contains(Lsun/security/x509/GeneralSubtree;)Z
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsun/security/x509/GeneralSubtree;->encode(Lsun/security/util/DerOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x30

    invoke-virtual {p1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v1, p1, Lsun/security/x509/GeneralSubtrees;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    nop

    nop

    iget-object v1, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    iget-object v2, v0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get(I)Lsun/security/x509/GeneralSubtree;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralSubtree;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public intersect(Lsun/security/x509/GeneralSubtrees;)Lsun/security/x509/GeneralSubtrees;
    .locals 20

    if-nez p1, :cond_0

    new-instance v18, Ljava/lang/NullPointerException;

    const-string/jumbo v19, "other GeneralSubtrees must not be null"

    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_0
    new-instance v9, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v9}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual/range {p0 .. p1}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    const/16 v18, 0x0

    return-object v18

    :cond_1
    invoke-direct/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    invoke-direct/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v16

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v12

    invoke-static {v12}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v11

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v9, v12}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    const/4 v14, 0x0

    :cond_2
    :goto_3
    if-eqz v14, :cond_9

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v15

    invoke-interface {v15}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v18

    invoke-interface/range {v16 .. v16}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/4 v7, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_4

    move-object/from16 v0, p1

    invoke-direct {v0, v7}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v10

    invoke-interface {v15, v10}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v2, v0, :cond_5

    :cond_3
    const/4 v5, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :pswitch_1
    const/4 v14, 0x1

    goto :goto_2

    :pswitch_2
    const/4 v14, 0x0

    goto :goto_3

    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    if-nez v5, :cond_8

    if-nez v8, :cond_7

    new-instance v8, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v8}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lsun/security/x509/GeneralSubtrees;->createWidestSubtree(Lsun/security/x509/GeneralNameInterface;)Lsun/security/x509/GeneralSubtree;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lsun/security/x509/GeneralSubtrees;->contains(Lsun/security/x509/GeneralSubtree;)Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    add-int/lit8 v4, v4, -0x1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v9}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    if-lez v18, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    :cond_b
    const/4 v4, 0x0

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v12

    invoke-static {v12}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v11

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v18

    packed-switch v18, :pswitch_data_1

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :pswitch_3
    const/4 v3, 0x1

    goto :goto_8

    :pswitch_4
    const/4 v3, 0x0

    :cond_c
    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reduce(Lsun/security/x509/GeneralSubtrees;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-direct {p1, v1}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-direct {p0, v2}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    invoke-interface {v0, v4}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public remove(I)V
    .locals 1

    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "   GeneralSubtrees:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    return-object v0
.end method

.method public union(Lsun/security/x509/GeneralSubtrees;)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    :cond_1
    return-void
.end method
