.class public final Lrx/internal/util/SubscriptionRandomList;
.super Ljava/lang/Object;
.source "SubscriptionRandomList.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lrx/Subscription;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Subscription;"
    }
.end annotation


# instance fields
.field private subscriptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    .line 40
    return-void
.end method

.method public varargs constructor <init>([Lrx/Subscription;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    .local p1, "subscriptions":[Lrx/Subscription;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 44
    return-void
.end method

.method private static unsubscribeFromAll(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lrx/Subscription;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "subscriptions":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_1

    .line 172
    :cond_0
    return-void

    .line 147
    :cond_1
    const/4 v1, 0x0

    .line 148
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

    .line 150
    .local v2, "s":Lrx/Subscription;, "TT;"
    :try_start_0
    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .restart local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "s":Lrx/Subscription;, "TT;"
    :cond_3
    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 160
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 161
    .local v3, "t":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_4

    .line 162
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 164
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_4
    new-instance v4, Lrx/exceptions/CompositeException;

    const-string v5, "Failed to unsubscribe to 1 or more subscriptions."

    invoke-direct {v4, v5, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v4

    .line 168
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    .local p1, "s":Lrx/Subscription;, "TT;"
    const/4 v0, 0x0

    .line 61
    .local v0, "unsubscribe":Lrx/Subscription;
    monitor-enter p0

    .line 62
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-eqz v1, :cond_1

    .line 63
    move-object v0, p1

    .line 70
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 75
    :cond_0
    return-void

    .line 65
    :cond_1
    :try_start_1
    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 66
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 68
    :cond_2
    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
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
    .line 103
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    const/4 v0, 0x0

    .line 104
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    monitor-enter p0

    .line 105
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 106
    :cond_0
    monitor-exit p0

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-static {v0}, Lrx/internal/util/SubscriptionRandomList;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public forEach(Lrx/functions/Action1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    .local p1, "action":Lrx/functions/Action1;, "Lrx/functions/Action1<TT;>;"
    const/4 v1, 0x0

    .line 117
    .local v1, "ss":[Lrx/Subscription;, "[TT;"
    monitor-enter p0

    .line 118
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v3, :cond_2

    .line 119
    :cond_0
    monitor-exit p0

    .line 126
    :cond_1
    return-void

    .line 121
    :cond_2
    iget-object v3, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Lrx/Subscription;

    move-object v1, v0

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 124
    .local v2, "t":Lrx/Subscription;, "TT;"
    invoke-interface {p1, v2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "t":Lrx/Subscription;, "TT;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public declared-synchronized isUnsubscribed()Z
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z
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
    .line 84
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    const/4 v0, 0x0

    .line 85
    .local v0, "unsubscribe":Z
    monitor-enter p0

    .line 86
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 87
    :cond_0
    monitor-exit p0

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-eqz v0, :cond_1

    .line 93
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unsubscribe()V
    .locals 2

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    const/4 v0, 0x0

    .line 131
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    monitor-enter p0

    .line 132
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-eqz v1, :cond_0

    .line 133
    monitor-exit p0

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    .line 136
    iget-object v0, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-static {v0}, Lrx/internal/util/SubscriptionRandomList;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
