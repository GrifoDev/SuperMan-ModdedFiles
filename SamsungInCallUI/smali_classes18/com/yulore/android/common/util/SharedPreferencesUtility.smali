.class public Lcom/yulore/android/common/util/SharedPreferencesUtility;
.super Ljava/lang/Object;
.source "SharedPreferencesUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mode:I

.field private final name:Ljava/lang/String;

.field private final separator:Ljava/lang/String;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->access$000(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->name:Ljava/lang/String;

    # getter for: Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->separator:Ljava/lang/String;
    invoke-static {p1}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->access$100(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->separator:Ljava/lang/String;

    # getter for: Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->access$200(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->context:Landroid/content/Context;

    # getter for: Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->mode:I
    invoke-static {p1}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->access$300(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->mode:I

    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->name:Ljava/lang/String;

    iget v2, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->mode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;Lcom/yulore/android/common/util/SharedPreferencesUtility$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yulore/android/common/util/SharedPreferencesUtility;-><init>(Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2

    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    double-to-float v1, p2

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2

    iget-object v1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2

    iget-object v1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    double-to-float v1, p2

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 2

    iget-object v1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2

    iget-object v1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putStringList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_2

    iget-object v3, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/util/SharedPreferencesUtility;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
