.class public Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/CompositeCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partition"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Landroid/database/Cursor;

.field d:I

.field e:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->a:Z

    iput-boolean p2, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
