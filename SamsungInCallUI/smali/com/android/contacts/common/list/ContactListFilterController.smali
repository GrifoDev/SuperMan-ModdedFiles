.class public abstract Lcom/android/contacts/common/list/ContactListFilterController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;
    }
.end annotation


# static fields
.field private static a:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilterController;->a:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ContactListFilterController;->a:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilterController;->a:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    :cond_0
    sget-object v0, Lcom/android/contacts/common/list/ContactListFilterController;->a:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/android/contacts/common/list/ContactListFilter;Z)V
.end method

.method public abstract a(Z)V
.end method
