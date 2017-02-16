.class public Lsun/security/x509/PolicyConstraintsExtension;
.super Lsun/security/x509/Extension;
.source "PolicyConstraintsExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.PolicyConstraints"

.field public static final INHIBIT:Ljava/lang/String; = "inhibit"

.field public static final NAME:Ljava/lang/String; = "PolicyConstraints"

.field public static final REQUIRE:Ljava/lang/String; = "require"

.field private static final TAG_INHIBIT:B = 0x1t

.field private static final TAG_REQUIRE:B


# instance fields
.field private inhibit:I

.field private require:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "require"    # I
    .param p2, "inhibit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1, p2}, Lsun/security/x509/PolicyConstraintsExtension;-><init>(Ljava/lang/Boolean;II)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;II)V
    .locals 1
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "require"    # I
    .param p3, "inhibit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 126
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 76
    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    .line 77
    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    .line 128
    iput p2, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    .line 129
    iput p3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    .line 130
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 131
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->critical:Z

    .line 132
    invoke-direct {p0}, Lsun/security/x509/PolicyConstraintsExtension;->encodeThis()V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 8
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 143
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 76
    iput v5, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    .line 77
    iput v5, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    .line 145
    sget-object v3, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 146
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->critical:Z

    .line 148
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    .line 149
    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    .line 150
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 151
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Sequence tag missing for PolicyConstraint."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    :cond_0
    iget-object v0, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 154
    .local v0, "in":Lsun/security/util/DerInputStream;
    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_7

    .line 155
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 157
    .local v1, "next":Lsun/security/util/DerValue;
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 164
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid encoding of PolicyConstraint"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_3
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    if-eq v3, v5, :cond_4

    .line 159
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Duplicate requireExplicitPolicyfound in the PolicyConstraintsExtension"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :cond_4
    invoke-virtual {v1, v7}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 162
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getInteger()I

    move-result v3

    iput v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    goto :goto_0

    .line 166
    :cond_5
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    if-eq v3, v5, :cond_6

    .line 167
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Duplicate inhibitPolicyMappingfound in the PolicyConstraintsExtension"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    :cond_6
    invoke-virtual {v1, v7}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 170
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getInteger()I

    move-result v3

    iput v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    goto :goto_0

    .line 144
    .end local v1    # "next":Lsun/security/util/DerValue;
    :cond_7
    return-void
.end method

.method private encodeThis()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, -0x80

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 81
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    if-ne v3, v4, :cond_0

    .line 82
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    .line 83
    return-void

    .line 85
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 86
    .local v1, "tagged":Lsun/security/util/DerOutputStream;
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 88
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    if-eq v3, v4, :cond_1

    .line 89
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 90
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 91
    invoke-static {v6, v5, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 94
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    if-eq v3, v4, :cond_2

    .line 95
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 96
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 98
    const/4 v3, 0x1

    .line 97
    invoke-static {v6, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 100
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    const/16 v3, 0x30

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 101
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    .line 80
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 249
    const-string/jumbo v0, "require"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iput v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    .line 257
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/PolicyConstraintsExtension;->encodeThis()V

    .line 248
    return-void

    .line 251
    :cond_0
    const-string/jumbo v0, "inhibit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iput v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    goto :goto_0

    .line 254
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PolicyConstraints."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 203
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 204
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 205
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->critical:Z

    .line 206
    invoke-direct {p0}, Lsun/security/x509/PolicyConstraintsExtension;->encodeThis()V

    .line 208
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 209
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 201
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    const-string/jumbo v0, "require"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 237
    :cond_0
    const-string/jumbo v0, "inhibit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 240
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PolicyConstraints."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lsun/security/x509/PolicyConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 266
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "require"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 267
    const-string/jumbo v1, "inhibit"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string/jumbo v0, "PolicyConstraints"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Integer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    const-string/jumbo v0, "require"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    .line 228
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/PolicyConstraintsExtension;->encodeThis()V

    .line 215
    return-void

    .line 221
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "inhibit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    goto :goto_0

    .line 224
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    const-string/jumbo v2, " not recognized by "

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 226
    const-string/jumbo v2, "CertAttrSet:PolicyConstraints."

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PolicyConstraints: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Require: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "s":Ljava/lang/String;
    iget v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    if-ne v1, v3, :cond_0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "unspecified;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\tInhibit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    iget v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    if-ne v1, v3, :cond_1

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "unspecified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    return-object v0

    .line 185
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
