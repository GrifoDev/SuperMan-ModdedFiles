.class public Lcom/android/contacts/common/list/ContactEntry;
.super Ljava/lang/Object;


# static fields
.field public static final m:Lcom/android/contacts/common/list/ContactEntry;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Landroid/net/Uri;

.field public g:Landroid/net/Uri;

.field public h:Ljava/lang/String;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:I

.field public k:Z

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/list/ContactEntry;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ContactEntry;-><init>()V

    sput-object v0, Lcom/android/contacts/common/list/ContactEntry;->m:Lcom/android/contacts/common/list/ContactEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntry;->b:I

    iput v1, p0, Lcom/android/contacts/common/list/ContactEntry;->j:I

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntry;->k:Z

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntry;->l:Z

    return-void
.end method
