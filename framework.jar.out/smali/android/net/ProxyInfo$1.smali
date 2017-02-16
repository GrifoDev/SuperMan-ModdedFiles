.class final Landroid/net/ProxyInfo$1;
.super Ljava/lang/Object;
.source "ProxyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ProxyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/ProxyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyInfo;
    .locals 20
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 535
    const/4 v4, 0x0

    .line 536
    .local v4, "host":Ljava/lang/String;
    const/4 v5, 0x0

    .line 538
    .local v5, "port":I
    const/4 v6, 0x0

    .line 539
    .local v6, "username":Ljava/lang/String;
    const/4 v7, 0x0

    .line 544
    .local v7, "password":Ljava/lang/String;
    const/16 v16, 0x0

    .line 547
    .local v16, "enterpriseProxy":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v10

    if-eqz v10, :cond_0

    .line 548
    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/Uri;

    .line 549
    .local v19, "url":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 551
    .local v17, "localPort":I
    new-instance v18, Landroid/net/ProxyInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    .line 553
    .local v18, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 554
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/ProxyInfo;->setEnterpriseProxy(I)V

    .line 556
    return-object v18

    .line 559
    .end local v17    # "localPort":I
    .end local v18    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v19    # "url":Landroid/net/Uri;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v10

    if-eqz v10, :cond_1

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 561
    .local v4, "host":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 563
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 566
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v10

    if-eqz v10, :cond_1

    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 568
    .local v6, "username":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 572
    .end local v4    # "host":Ljava/lang/String;
    .end local v6    # "username":Ljava/lang/String;
    .end local v7    # "password":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 573
    .local v8, "exclList":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 575
    .local v9, "parsedExclList":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 577
    .local v3, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v6, :cond_2

    const-string/jumbo v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 581
    :cond_2
    new-instance v3, Landroid/net/ProxyInfo;

    .end local v3    # "proxyProperties":Landroid/net/ProxyInfo;
    const/4 v15, 0x0

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move-object v13, v8

    move-object v14, v9

    invoke-direct/range {v10 .. v15}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo;)V

    .line 587
    .local v3, "proxyProperties":Landroid/net/ProxyInfo;
    :goto_0
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/net/ProxyInfo;->setEnterpriseProxy(I)V

    .line 590
    return-object v3

    .line 579
    .local v3, "proxyProperties":Landroid/net/ProxyInfo;
    :cond_3
    new-instance v3, Landroid/net/ProxyInfo;

    .end local v3    # "proxyProperties":Landroid/net/ProxyInfo;
    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo;)V

    .line 577
    .local v3, "proxyProperties":Landroid/net/ProxyInfo;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Landroid/net/ProxyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/ProxyInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 594
    new-array v0, p1, [Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Landroid/net/ProxyInfo$1;->newArray(I)[Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method
