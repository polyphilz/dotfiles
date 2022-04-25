from _typeshed import IdentityFunction
from typing import Callable, Sequence, TypeVar

_T = TypeVar("_T")

def lfu_cache(maxsize: float = ..., typed: bool = ...) -> IdentityFunction: ...
def lru_cache(maxsize: float = ..., typed: bool = ...) -> IdentityFunction: ...
def rr_cache(maxsize: float = ..., choice: Callable[[Sequence[_T]], _T] | None = ..., typed: bool = ...) -> IdentityFunction: ...
def ttl_cache(maxsize: float = ..., ttl: float = ..., timer: float = ..., typed: bool = ...) -> IdentityFunction: ...