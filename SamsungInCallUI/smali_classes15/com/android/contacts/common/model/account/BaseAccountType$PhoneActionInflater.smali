.class public Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;
.super Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1

    invoke-static {p1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPhoneLabelResourceId(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->isCustomPhoneType(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
