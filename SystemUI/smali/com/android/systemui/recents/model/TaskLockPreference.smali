.class public Lcom/android/systemui/recents/model/TaskLockPreference;
.super Ljava/lang/Object;
.source "TaskLockPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultPrefs:Landroid/content/SharedPreferences;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "TaskLockPreferencePlus"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "DefaultLockPreference"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mDefaultPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/systemui/recents/model/TaskLockPreference;->cleanupDefaultPrefIfNeeded()V

    return-void
.end method

.method private cleanupDefaultPrefIfNeeded()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mDefaultPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mDefaultPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mDefaultPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mDefaultPrefs:Landroid/content/SharedPreferences;

    :cond_1
    return-void
.end method

.method private getAffinityName(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    return-object v1

    :cond_0
    return-object v2
.end method

.method private getComponentName(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/TaskLockPreference;->getComponentName(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskLockPreference;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, " key="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, " value="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getLockedTasksCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public isDefaultLockedPackage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mDefaultPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mDefaultPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/model/TaskLockPreference;->isDefaultLockedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/TaskLockPreference;->getKey(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v3

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/TaskLockPreference;->getComponentName(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/TaskLockPreference;->getAffinityName(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v4

    :cond_3
    return v3
.end method

.method public removeLockedTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/model/TaskLockPreference;->getKey(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mDefaultPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mDefaultPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/android/systemui/recents/model/TaskLockPreference;->cleanupDefaultPrefIfNeeded()V

    :cond_0
    return-void
.end method

.method public saveDefaultLockedPackage(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mDefaultPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "DefaultLockPreference"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mDefaultPrefs:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mDefaultPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveLockedTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/model/TaskLockPreference;->getComponentName(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/model/TaskLockPreference;->getAffinityName(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/model/TaskLockPreference;->getComponentName(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/recents/model/TaskLockPreference;->saveLockedTask(Ljava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method public saveLockedTask(Ljava/lang/String;ILjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskLockPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v1, -0x2710

    if-eq p2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
