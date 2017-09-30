.class public Lcom/android/contacts/common/vcard/ImportRequest;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/accounts/Account;

.field public final b:Landroid/net/Uri;

.field public final c:[B

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/model/account/AccountWithDataSet;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a()Landroid/accounts/Account;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportRequest;->a:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportRequest;->c:[B

    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportRequest;->b:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/contacts/common/vcard/ImportRequest;->d:Ljava/lang/String;

    iput p5, p0, Lcom/android/contacts/common/vcard/ImportRequest;->e:I

    iput-object p6, p0, Lcom/android/contacts/common/vcard/ImportRequest;->f:Ljava/lang/String;

    iput p7, p0, Lcom/android/contacts/common/vcard/ImportRequest;->g:I

    iput p8, p0, Lcom/android/contacts/common/vcard/ImportRequest;->h:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
