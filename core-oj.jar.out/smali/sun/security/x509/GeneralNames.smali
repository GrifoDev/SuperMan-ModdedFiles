.class public Lsun/security/x509/GeneralNames;
.super Ljava/lang/Object;
.source "GeneralNames.java"


# instance fields
.field private final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    .line 76
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lsun/security/x509/GeneralNames;-><init>()V

    .line 57
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 58
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding for GeneralNames."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_1

    .line 61
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "No data available in passed DER encoded value."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_1
    :goto_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 68
    .local v0, "encName":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/GeneralName;

    invoke-direct {v1, v0}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;)V

    .line 69
    .local v1, "name":Lsun/security/x509/GeneralName;
    invoke-virtual {p0, v1}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    goto :goto_0

    .line 55
    .end local v0    # "encName":Lsun/security/util/DerValue;
    .end local v1    # "name":Lsun/security/x509/GeneralName;
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;
    .locals 1
    .param p1, "name"    # Lsun/security/x509/GeneralName;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-object p0
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 120
    .local v2, "temp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "gn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralName;

    .line 121
    .local v0, "gn":Lsun/security/x509/GeneralName;
    invoke-virtual {v0, v2}, Lsun/security/x509/GeneralName;->encode(Lsun/security/util/DerOutputStream;)V

    goto :goto_0

    .line 123
    .end local v0    # "gn":Lsun/security/x509/GeneralName;
    :cond_1
    const/16 v3, 0x30

    invoke-virtual {p1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 114
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 132
    if-ne p0, p1, :cond_0

    .line 133
    const/4 v1, 0x1

    return v1

    .line 135
    :cond_0
    instance-of v1, p1, Lsun/security/x509/GeneralNames;

    if-nez v1, :cond_1

    .line 136
    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    .line 138
    check-cast v0, Lsun/security/x509/GeneralNames;

    .line 139
    .local v0, "other":Lsun/security/x509/GeneralNames;
    iget-object v1, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    iget-object v2, v0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get(I)Lsun/security/x509/GeneralName;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralName;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lsun/security/x509/GeneralName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public names()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/GeneralName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
