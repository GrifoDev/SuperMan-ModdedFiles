.class public Lcom/android/contacts/common/model/dataitem/PhotoDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public c()[B
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;->a()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data15"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
