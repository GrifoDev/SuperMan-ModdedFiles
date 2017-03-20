.class public Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
.super Ljava/lang/Object;
.source "CompositeCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/CompositeCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partition"
.end annotation


# instance fields
.field count:I

.field cursor:Landroid/database/Cursor;

.field hasHeader:Z

.field idColumnIndex:I

.field showIfEmpty:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    .line 45
    iput-boolean p2, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->hasHeader:Z

    .line 46
    return-void
.end method


# virtual methods
.method public getHasHeader()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->hasHeader:Z

    return v0
.end method

.method public getShowIfEmpty()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
