.class public Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;
.super Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    const-string v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    const-string v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f0900cd

    .line 639
    if-nez p1, :cond_0

    .line 660
    :goto_0
    :pswitch_0
    return v0

    .line 640
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 642
    :pswitch_1
    const v0, 0x7f0900ce

    goto :goto_0

    .line 644
    :pswitch_2
    const v0, 0x7f0900d2

    goto :goto_0

    .line 646
    :pswitch_3
    const v0, 0x7f0900d5

    goto :goto_0

    .line 648
    :pswitch_4
    const v0, 0x7f0900d4

    goto :goto_0

    .line 650
    :pswitch_5
    const v0, 0x7f0900d3

    goto :goto_0

    .line 652
    :pswitch_6
    const v0, 0x7f0900cf

    goto :goto_0

    .line 654
    :pswitch_7
    const v0, 0x7f0900d0

    goto :goto_0

    .line 656
    :pswitch_8
    const v0, 0x7f0900d1

    goto :goto_0

    .line 640
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
