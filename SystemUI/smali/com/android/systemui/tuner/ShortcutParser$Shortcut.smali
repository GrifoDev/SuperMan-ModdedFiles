.class public Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/ShortcutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shortcut"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Icon;

.field public id:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    .locals 8

    const-string/jumbo v4, "::"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v4, Lcom/android/systemui/tuner/ShortcutParser;

    new-instance v5, Landroid/content/ComponentName;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/tuner/ShortcutParser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual {v4}, Lcom/android/systemui/tuner/ShortcutParser;->getShortcuts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    iget-object v4, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->id:Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
