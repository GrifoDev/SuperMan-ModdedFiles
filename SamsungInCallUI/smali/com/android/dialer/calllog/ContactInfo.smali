.class public Lcom/android/dialer/calllog/ContactInfo;
.super Ljava/lang/Object;


# static fields
.field public static EMPTY:Lcom/android/dialer/calllog/ContactInfo;


# instance fields
.field public formattedNumber:Ljava/lang/String;

.field public isBadData:Z

.field public label:Ljava/lang/String;

.field public lookupKey:Ljava/lang/String;

.field public lookupUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public nameAlternative:Ljava/lang/String;

.field public normalizedNumber:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public objectId:Ljava/lang/String;

.field public photoId:J

.field public photoUri:Landroid/net/Uri;

.field public type:I

.field public userType:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    sput-object v0, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/android/dialer/calllog/ContactInfo;

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/contacts/common/util/UriUtils;->a(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->nameAlternative:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/dialer/calllog/ContactInfo;->nameAlternative:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v3, p1, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-wide v2, p0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    iget-wide v4, p1, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/contacts/common/util/UriUtils;->a(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget-wide v2, p0, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    iget-wide v4, p1, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/a/a/d;->a(Ljava/lang/Object;)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "lookupUri"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "nameAlternative"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->nameAlternative:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "type"

    iget v2, p0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;I)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "label"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "number"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "formattedNumber"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "normalizedNumber"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "photoId"

    iget-wide v2, p0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;J)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "photoUri"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "objectId"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/d$a;

    move-result-object v0

    const-string v1, "userType"

    iget-wide v2, p0, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/a/d$a;->a(Ljava/lang/String;J)Lcom/google/a/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/d$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
