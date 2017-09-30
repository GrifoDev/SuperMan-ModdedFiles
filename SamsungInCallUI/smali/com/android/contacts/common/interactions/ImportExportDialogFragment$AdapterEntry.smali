.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterEntry"
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->b:I

    iput p3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method
