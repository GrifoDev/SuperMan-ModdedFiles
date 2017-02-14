.class public Lcom/android/contacts/common/vcard/ImportRequest;
.super Ljava/lang/Object;
.source "ImportRequest.java"


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final data:[B

.field public final displayName:Ljava/lang/String;

.field public final entryCount:I

.field public final estimatedCharset:Ljava/lang/String;

.field public final estimatedVCardType:I

.field public final uri:Landroid/net/Uri;

.field public final vcardVersion:I


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/model/account/AccountWithDataSet;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->getAccountOrNull()Landroid/accounts/Account;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportRequest;->account:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportRequest;->data:[B

    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportRequest;->uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    iput p5, p0, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedVCardType:I

    iput-object p6, p0, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    iput p7, p0, Lcom/android/contacts/common/vcard/ImportRequest;->vcardVersion:I

    iput p8, p0, Lcom/android/contacts/common/vcard/ImportRequest;->entryCount:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
