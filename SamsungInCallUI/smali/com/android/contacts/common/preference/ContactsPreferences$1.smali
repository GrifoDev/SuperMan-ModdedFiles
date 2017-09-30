.class Lcom/android/contacts/common/preference/ContactsPreferences$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/preference/ContactsPreferences;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/android/contacts/common/preference/ContactsPreferences;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/preference/ContactsPreferences;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->b:Lcom/android/contacts/common/preference/ContactsPreferences;

    iput-object p2, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->b:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->a(Ljava/lang/String;)V

    return-void
.end method
