.class public final Lrx/subscriptions/CompositeSubscription;
.super Ljava/lang/Object;
.source "CompositeSubscription.java"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field private subscriptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    .line 37
    return-void
.end method

.method public varargs constructor <init>([Lrx/Subscription;)V
    .locals 2
    .param p1, "subscriptions"    # [Lrx/Subscription;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 41
    return-void
.end method

.method private static unsubscribeFromAll(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "subscriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    if-nez p0, :cond_1

    .line 155
    :cond_0
    return-void

    .line 130
    :cond_1
    const/4 v1, 0x0

    .line 131
    .local v1, "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Subscription;

    .line 133
    .local v2, "s":Lrx/Subscription;
    :try_start_0
    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .restart local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "s":Lrx/Subscription;
    :cond_3
    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 143
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 144
    .local v3, "t":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_4

    .line 145
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 147
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_4
    new-instance v4, Lrx/exceptions/CompositeException;

    const-string v5, "Failed to unsubscribe to 1 or more subscriptions."

    invoke-direct {v4, v5, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v4

    .line 151
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_5
    new-instance v4, Lrx/exceptions/CompositeException;

    const-string v5, "Failed to unsubscribe to 2 or more subscriptions."

    invoke-direct {v4, v5, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v4
.end method


# virtual methods
.method public add(Lrx/Subscription;)V
    .locals 3
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "unsubscribe":Lrx/Subscription;
    monitor-enter p0

    .line 60
    :try_start_0
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-eqz v1, :cond_1

    .line 61
    move-object v0, p1

    .line 68
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 73
    :cond_0
    return-void

    .line 63
    :cond_1
    :try_start_1
    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 64
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 66
    :cond_2
    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    monitor-enter p0

    .line 104
    :try_start_0
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 105
    :cond_0
    monitor-exit p0

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-static {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized isUnsubscribed()Z
    .locals 1

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Lrx/Subscription;)V
    .locals 2
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "unsubscribe":Z
    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 86
    :cond_0
    monitor-exit p0

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v0, :cond_1

    .line 92
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-eqz v0, :cond_0

    .line 118
    monitor-exit p0

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    invoke-static {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
