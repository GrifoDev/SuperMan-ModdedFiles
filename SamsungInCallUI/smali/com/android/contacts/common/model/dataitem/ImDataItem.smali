.class public Lcom/android/contacts/common/model/dataitem/ImDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/model/dataitem/ImDataItem;->a:Z

    return-void
.end method
