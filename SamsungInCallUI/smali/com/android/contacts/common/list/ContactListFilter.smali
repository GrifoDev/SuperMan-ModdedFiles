.class public final Lcom/android/contacts/common/list/ContactListFilter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/common/list/ContactListFilter;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter$1;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ContactListFilter$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    iput-object p2, p0, Lcom/android/contacts/common/list/ContactListFilter;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/contacts/common/list/ContactListFilter;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/contacts/common/list/ContactListFilter;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static a(I)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    move v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static a(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 4

    const/4 v3, -0x2

    invoke-static {p0}, Lcom/android/contacts/common/list/ContactListFilter;->b(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v3}, Lcom/android/contacts/common/list/ContactListFilter;->a(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    :cond_0
    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactListFilter;->a(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 6

    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static a(Landroid/content/SharedPreferences;Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    const/4 v2, -0x6

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.type"

    if-nez p1, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.accountName"

    if-nez p1, :cond_2

    move-object v0, v1

    :goto_2
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.accountType"

    if-nez p1, :cond_3

    move-object v0, v1

    :goto_3
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "filter.dataSet"

    if-nez p1, :cond_4

    :goto_4
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->b:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->d:Ljava/lang/String;

    goto :goto_4
.end method

.method private static b(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 6

    const/4 v2, -0x1

    const/4 v5, 0x0

    const-string v0, "filter.type"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v5

    :cond_0
    const-string v0, "filter.accountName"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "filter.accountType"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "filter.dataSet"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object v5, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/contacts/common/list/ContactListFilter;)I
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    iget v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 2

    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "filterType must be FILTER_TYPE_ACCOUNT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "account_name"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "account_type"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data_set"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    return-object p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListFilter;->a(Lcom/android/contacts/common/list/ContactListFilter;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/android/contacts/common/list/ContactListFilter;

    iget v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    :pswitch_1
    const-string v0, "all_accounts"

    goto :goto_0

    :pswitch_2
    const-string v0, "custom"

    goto :goto_0

    :pswitch_3
    const-string v0, "starred"

    goto :goto_0

    :pswitch_4
    const-string v0, "with_phones"

    goto :goto_0

    :pswitch_5
    const-string v0, "single"

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
