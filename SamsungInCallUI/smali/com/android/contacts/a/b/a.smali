.class public final Lcom/android/contacts/a/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/android/contacts/a/b/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/contacts/a/b/a;
    .locals 1

    sget-object v0, Lcom/android/contacts/a/b/a;->a:Lcom/android/contacts/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/a/b/a;

    invoke-direct {v0}, Lcom/android/contacts/a/b/a;-><init>()V

    sput-object v0, Lcom/android/contacts/a/b/a;->a:Lcom/android/contacts/a/b/a;

    :cond_0
    sget-object v0, Lcom/android/contacts/a/b/a;->a:Lcom/android/contacts/a/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Z
    .locals 0

    return p2
.end method
