# typed: strong

class ActionController::Base < ActionController::Metal
end

class AbstractController::Base < Object
end

class ActionController::Metal < AbstractController::Base
  sig { returns(ActionDispatch::Request) }
  def request(); end

  sig { returns(ActionDispatch::Response) }
  def response(); end

  sig { returns(ActionController::Parameters) }
  def params(); end
end

module ActionDispatch::Http::Parameters
  sig { returns(ActionController::Parameters) }
  def parameters(); end

  # params is an alias of parameters
  sig { returns(ActionController::Parameters) }
  def params(); end
end

class ActionDispatch::Request
end

class ActionDispatch::Response
end

class ActionController::Parameters
  sig { params(other: ActionController::Parameters).returns(T::Boolean) }
  def ==(other); end

  sig { params(key: T.any(String, Symbol)).returns(T.untyped) }
  def [](key); end

  sig { params(key: T.any(String, Symbol), value: T.untyped).void }
  def []=(key, value); end

  sig { returns(T.nilable(T::Array[T.any(String, Symbol)])) }
  def always_permitted_parameters; end

  sig { params(obj: T.nilable(T::Array[T.any(String, Symbol)])).void }
  def always_permitted_parameters=(obj); end

  sig { params(options: T.untyped).returns(T.untyped) }
  def as_json(options = nil); end

  sig { returns(T.untyped) }
  def deep_dup; end

  sig { params(key: T.any(String, Symbol), block: T.untyped).returns(T.untyped) }
  def delete(key, &block); end

  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def dig(*keys); end

  sig { params(block: T.untyped).returns(T.untyped) }
  def each_pair(&block); end

  # each is an alias of each_pair
  sig { params(block: T.untyped).returns(T.untyped) }
  def each(&block); end

  sig { returns(T::Boolean) }
  def empty?; end

  sig { params(keys: T.any(String, Symbol)).returns(ActionController::Parameters) }
  def except(*keys); end

  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def extract!(*keys); end

  sig { params(key: T.any(String, Symbol), args: T.untyped).returns(T.untyped) }
  def fetch(key, *args); end

  sig { params(key: T.any(String, Symbol)).returns(T::Boolean) }
  def has_key?(key); end

  sig { params(value: T.untyped).returns(T::Boolean) }
  def has_value?(value); end

  sig { params(key: T.any(String, Symbol)).returns(T::Boolean) }
  def include?(key); end

  sig { params(parameters: T.untyped).void }
  def initialize(parameters = nil); end

  sig { returns(String) }
  def inspect; end

  sig { params(key: T.any(String, Symbol)).returns(T::Boolean) }
  def key?(key); end

  sig { returns(T::Array[T.untyped]) }
  def keys; end

  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def merge!(other_hash); end

  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def merge(other_hash); end

  sig { returns(T.untyped) }
  def parameters; end

  sig { returns(T.self_type) }
  def permit!; end

  # You can pass _a lot_ of stuff to permit, so filters is left untyped for now.
  sig { params(filters: T.untyped).returns(ActionController::Parameters) }
  def permit(*filters); end

  sig { params(new_permitted: T.untyped).void }
  def permitted=(new_permitted); end

  sig { returns(T::Boolean) }
  def permitted?; end

  sig { params(block: T.untyped).returns(T.untyped) }
  def reject!(&block); end

  # delete_if is an alias of reject!
  sig { params(block: T.untyped).returns(T.untyped) }
  def delete_if(&block); end

  sig { params(block: T.untyped).returns(T.untyped) }
  def reject(&block); end

  sig do
    params(
      key: T.any(String, Symbol),
    ).returns(
      T.nilable(
        T.any(
          String,
          Numeric,
          ActionController::Parameters,
        ),
      ),
    )
  end
  def [](key); end

  sig do
    params(
      key: T.any(
        String,
        Symbol,
        T::Array[T.any(String, Symbol)],
      ),
    ).returns(
      T.any(
        String,
        Numeric,
        T::Array[T.untyped],
        ActionController::Parameters,
      ),
    )
  end
  def require(key); end

  # required is an alias of require
  sig do
    params(
      key: T.any(
        String,
        Symbol,
        T::Array[T.any(String, Symbol)],
      ),
    ).returns(
      T.any(
        String,
        Numeric,
        T::Array[T.untyped],
        ActionController::Parameters,
      ),
    )
  end
  def required(key); end

  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def reverse_merge!(other_hash); end

  # with_defaults! is an alias of reverse_merge!
  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def with_defaults!(other_hash); end

  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def reverse_merge(other_hash); end

  # with_defaults is an alias of reverse_merge
  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def with_defaults(other_hash); end

  sig { params(block: T.untyped).returns(T.nilable(ActionController::Parameters)) }
  def select!(&block); end

  # keep_if is an alias of select!
  sig { params(block: T.untyped).returns(T.nilable(ActionController::Parameters)) }
  def keep_if(&block); end

  sig { params(block: T.untyped).returns(ActionController::Parameters) }
  def select(&block); end

  sig { returns(T.any(Symbol, T::Boolean)) }
  def self.action_on_unpermitted_parameters; end

  sig { params(obj: T.any(Symbol, T::Boolean)).void }
  def self.action_on_unpermitted_parameters=(obj); end

  sig { returns(T::Array[T.any(String, Symbol)]) }
  def self.always_permitted_parameters; end

  sig { params(obj: T::Array[T.any(String, Symbol)]).void }
  def self.always_permitted_parameters=(obj); end

  sig { returns(T::Boolean) }
  def self.permit_all_parameters; end

  sig { params(obj: T::Boolean).void }
  def self.permit_all_parameters=(obj); end

  sig { params(keys: T.any(String, Symbol)).returns(ActionController::Parameters) }
  def slice!(*keys); end

  sig { params(keys: T.any(String, Symbol)).returns(ActionController::Parameters) }
  def slice(*keys); end

  sig { returns(ActiveSupport::HashWithIndifferentAccess) }
  def to_h; end

  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def to_hash; end

  # to_param is an alias of to_query
  sig { params(args: String).returns(T.nilable(String)) }
  def to_param(*args); end

  sig { params(args: String).returns(T.nilable(String)) }
  def to_query(*args); end

  sig { returns(String) }
  def to_s; end

  sig { returns(ActiveSupport::HashWithIndifferentAccess) }
  def to_unsafe_h; end

  # to_unsafe_hash is an alias of to_unsafe_h
  sig { returns(ActiveSupport::HashWithIndifferentAccess) }
  def to_unsafe_hash; end

  sig { params(block: T.untyped).returns(ActionController::Parameters) }
  def transform_keys!(&block); end

  sig { params(block: T.untyped).returns(ActionController::Parameters) }
  def transform_keys(&block); end

  sig { returns(ActionController::Parameters) }
  def transform_values!; end

  sig { returns(ActionController::Parameters) }
  def transform_values; end

  sig { params(value: T.untyped).returns(T::Boolean) }
  def value?(value); end

  sig { returns(T::Array[T.untyped]) }
  def values; end

  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def values_at(*keys); end
end

module ActionController::StrongParameters
  sig { returns(ActionController::Parameters) }
  def params; end
end

class ActionDispatch::Routing::RouteSet
  sig { params(blk: T.proc.bind(ActionDispatch::Routing::Mapper).void).void }
  def draw(&blk); end
end

module ActionController::Flash::ClassMethods
  sig { params(types: Symbol).void }
  def add_flash_types(*types); end
end

module ActionController::RequestForgeryProtection::ClassMethods
  sig do
    params(
      only: T.any(T::Array[Symbol], Symbol),
      except: T.nilable(T.any(T::Array[Symbol], Symbol)),
      if: T.untyped,
      unless: T.untyped,
      prepend: T.untyped,
      with: T.nilable(Symbol),
      exception: T.untyped,
      reset_session: T.untyped,
      null_session: T.untyped
    ).void
  end
  def protect_from_forgery(
    only: nil,
    except: nil,
    if: nil,
    unless: nil,
    prepend: false,
    with: nil,
    exception: nil,
    reset_session: nil,
    null_session: nil
  ); end
end

module ActionDispatch::Routing::Mapper::HttpHelpers
  # get, put, patch, post, and delete all have the same arguments as
  # ActionDispatch::Routing::Mapper::Resources#match
  sig do
    params(
      name: T.any(String, Symbol, T::Hash[String, String]),
      controller: T.nilable(T.any(String, Symbol)),
      action: T.nilable(T.any(String, Symbol)),
      param: T.nilable(Symbol),
      module: T.nilable(T.any(String, Symbol)),
      as: T.nilable(T.any(String, Symbol)),
      via: T.nilable(T.any(Symbol, T::Array[Symbol])),
      to: T.nilable(T.any(String, T.proc.returns(T.untyped))),
      on: T.nilable(Symbol),
      constraints: T.untyped,
      defaults: T.nilable(T::Hash[T.untyped, T.untyped]),
      anchor: T::Boolean,
      format: T.nilable(T.any(String, T::Boolean)),
      path: T.nilable(T.any(String, Symbol)),
      block: T.untyped
    ).returns(T.untyped)
  end
  def delete(
    name,
    controller: nil,
    action: nil,
    param: :id,
    module: nil,
    as: nil,
    via: nil,
    to: nil,
    on: nil,
    constraints: nil,
    defaults: nil,
    anchor: true,
    format: nil,
    path: nil,
    &block
  ); end

  sig do
    params(
      name: T.any(String, Symbol, T::Hash[String, String]),
      controller: T.nilable(T.any(String, Symbol)),
      action: T.nilable(T.any(String, Symbol)),
      param: T.nilable(Symbol),
      module: T.nilable(T.any(String, Symbol)),
      as: T.nilable(T.any(String, Symbol)),
      via: T.nilable(T.any(Symbol, T::Array[Symbol])),
      to: T.nilable(T.any(String, Symbol, T.proc.returns(T.untyped))),
      on: T.nilable(Symbol),
      constraints: T.untyped,
      defaults: T.nilable(T::Hash[T.untyped, T.untyped]),
      anchor: T::Boolean,
      format: T.nilable(T.any(String, T::Boolean)),
      path: T.nilable(T.any(String, Symbol)),
      block: T.untyped
    ).returns(T.untyped)
  end
  def get(
    name,
    controller: nil,
    action: nil,
    param: :id,
    module: nil,
    as: nil,
    via: nil,
    to: nil,
    on: nil,
    constraints: nil,
    defaults: nil,
    anchor: true,
    format: nil,
    path: nil,
    &block
  ); end

  sig do
    params(
      name: T.any(String, Symbol, T::Hash[String, String]),
      controller: T.nilable(T.any(String, Symbol)),
      action: T.nilable(T.any(String, Symbol)),
      param: T.nilable(Symbol),
      module: T.nilable(T.any(String, Symbol)),
      as: T.nilable(T.any(String, Symbol)),
      via: T.nilable(T.any(Symbol, T::Array[Symbol])),
      to: T.nilable(T.any(String, T.proc.returns(T.untyped))),
      on: T.nilable(Symbol),
      constraints: T.untyped,
      defaults: T.nilable(T::Hash[T.untyped, T.untyped]),
      anchor: T::Boolean,
      format: T.nilable(T.any(String, T::Boolean)),
      path: T.nilable(T.any(String, Symbol)),
      block: T.untyped
    ).returns(T.untyped)
  end
  def patch(
    name,
    controller: nil,
    action: nil,
    param: :id,
    module: nil,
    as: nil,
    via: nil,
    to: nil,
    on: nil,
    constraints: nil,
    defaults: nil,
    anchor: true,
    format: nil,
    path: nil,
    &block
  ); end

  sig do
    params(
      name: T.any(String, Symbol, T::Hash[String, String]),
      controller: T.nilable(T.any(String, Symbol)),
      action: T.nilable(T.any(String, Symbol)),
      param: T.nilable(Symbol),
      module: T.nilable(T.any(String, Symbol)),
      as: T.nilable(T.any(String, Symbol)),
      via: T.nilable(T.any(Symbol, T::Array[Symbol])),
      to: T.nilable(T.any(String, T.proc.returns(T.untyped))),
      on: T.nilable(Symbol),
      constraints: T.untyped,
      defaults: T.nilable(T::Hash[T.untyped, T.untyped]),
      anchor: T::Boolean,
      format: T.nilable(T.any(String, T::Boolean)),
      path: T.nilable(T.any(String, Symbol)),
      block: T.untyped
    ).returns(T.untyped)
  end
  def post(
    name,
    controller: nil,
    action: nil,
    param: :id,
    module: nil,
    as: nil,
    via: nil,
    to: nil,
    on: nil,
    constraints: nil,
    defaults: nil,
    anchor: true,
    format: nil,
    path: nil,
    &block
  ); end

  sig do
    params(
      name: T.any(String, Symbol, T::Hash[String, String]),
      controller: T.nilable(T.any(String, Symbol)),
      action: T.nilable(T.any(String, Symbol)),
      param: T.nilable(Symbol),
      module: T.nilable(T.any(String, Symbol)),
      as: T.nilable(T.any(String, Symbol)),
      via: T.nilable(T.any(Symbol, T::Array[Symbol])),
      to: T.nilable(T.any(String, T.proc.returns(T.untyped))),
      on: T.nilable(Symbol),
      constraints: T.untyped,
      defaults: T.nilable(T::Hash[T.untyped, T.untyped]),
      anchor: T::Boolean,
      format: T.nilable(T.any(String, T::Boolean)),
      path: T.nilable(T.any(String, Symbol)),
      block: T.untyped
    ).returns(T.untyped)
  end
  def put(
    name,
    controller: nil,
    action: nil,
    param: :id,
    module: nil,
    as: nil,
    via: nil,
    to: nil,
    on: nil,
    constraints: nil,
    defaults: nil,
    anchor: true,
    format: nil,
    path: nil,
    &block
  ); end
end

module ActionDispatch::Routing::Mapper::Resources
  sig { params(name: T.untyped).returns(T.untyped) }
  def action_path(name); end

  sig { params(block: T.untyped).returns(T.untyped) }
  def collection(&block); end

  sig do
    params(
      name: T.any(String, Symbol, T::Hash[String, String]),
      controller: T.nilable(T.any(String, Symbol)),
      action: T.nilable(T.any(String, Symbol)),
      param: T.nilable(Symbol),
      module: T.nilable(T.any(String, Symbol)),
      as: T.nilable(T.any(String, Symbol)),
      via: T.nilable(T.any(Symbol, T::Array[Symbol])),
      to: T.nilable(T.any(String, T.proc.returns(T.untyped))),
      on: T.nilable(Symbol),
      constraints: T.untyped,
      defaults: T.nilable(T::Hash[T.untyped, T.untyped]),
      anchor: T::Boolean,
      format: T.nilable(T.any(String, T::Boolean)),
      path: T.nilable(T.any(String, Symbol)),
      block: T.untyped
    ).returns(T.untyped)
  end
  def match(
    name,
    controller: nil,
    action: nil,
    param: :id,
    module: nil,
    as: nil,
    via: nil,
    to: nil,
    on: nil,
    constraints: nil,
    defaults: nil,
    anchor: true,
    format: nil,
    path: nil,
    &block
  ); end

  sig { params(block: T.untyped).returns(T.untyped) }
  def member(&block); end

  # These are set to T.unsafe(nil) because they do actually have values, but they
  # can't be determined statically. They take the value of path when no explicit
  # values are provided.
  sig do
    params(
      path: T.untyped,
      as: T.untyped,
      module: T.untyped,
      shallow_path: T.untyped,
      shallow_prefix: T.untyped,
      block: T.untyped
    ).returns(T.untyped)
  end
  def namespace(
    path,
    as: T.unsafe(nil),
    module: T.unsafe(nil),
    shallow_path: T.unsafe(nil),
    shallow_prefix: T.unsafe(nil),
    &block
  ); end

  sig do
    params(
      resources: T.any(String, Symbol),
      as: T.nilable(T.any(String, Symbol)),
      controller: T.nilable(T.any(String, Symbol)),
      concerns: T.nilable(T.any(Symbol, T::Array[Symbol])),
      param: T.nilable(Symbol),
      path_names: T.untyped,
      path: T.untyped,
      only: T.nilable(T.any(
        T::Array[T.any(String, Symbol)],
        String,
        Symbol
      )),
      except: T.nilable(T.any(
        T::Array[T.any(String, Symbol)],
        String,
        Symbol
      )),
      shallow: T::Boolean,
      shallow_path: T.nilable(String),
      shallow_prefix: T.nilable(String),
      format: T.untyped,
      block: T.untyped
    ).returns(T.untyped)
  end
  def resource(
    *resources,
    as: nil,
    controller: nil,
    concerns: nil,
    param: nil,
    path_names: nil,
    path: nil,
    only: nil,
    except: nil,
    shallow: false,
    shallow_path: nil,
    shallow_prefix: nil,
    format: nil,
    &block
  ); end

  sig do
    params(
      resources: T.any(String, Symbol),
      as: T.nilable(T.any(String, Symbol)),
      controller: T.nilable(T.any(String, Symbol)),
      concerns: T.nilable(T.any(Symbol, T::Array[Symbol])),
      param: T.nilable(Symbol),
      path_names: T.untyped,
      path: T.untyped,
      only: T.nilable(T.any(
        T::Array[T.any(String, Symbol)],
        String,
        Symbol
      )),
      except: T.nilable(T.any(
        T::Array[T.any(String, Symbol)],
        String,
        Symbol
      )),
      shallow: T::Boolean,
      shallow_path: T.nilable(String),
      shallow_prefix: T.nilable(String),
      format: T.untyped,
      block: T.untyped
    ).returns(T.untyped)
  end
  def resources(
    *resources,
    as: nil,
    controller: nil,
    concerns: nil,
    param: nil,
    path_names: nil,
    path: nil,
    only: nil,
    except: nil,
    shallow: false,
    shallow_path: nil,
    shallow_prefix: nil,
    format: nil,
    &block
  ); end

  # Technically, path doesn't have a default value set. However, this is
  # necessary to allow code like `root to: 'home#index'`.
  sig { params(path: T.nilable(String), to: T.untyped).returns(T.untyped) }
  def root(path = T.unsafe(nil), to: nil); end

  sig { returns(T.untyped) }
  def shallow; end

  sig { returns(T::Boolean) }
  def shallow?; end
end

# https://api.rubyonrails.org/classes/AbstractController/Callbacks/ClassMethods.html
module AbstractController::Callbacks::ClassMethods
  sig do
    params(
      names: Symbol,
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def after_action(*names, except: nil, only: nil, if: nil, unless: nil, &block); end

  # append_after_action is an alias of after_action
  sig do
    params(
      names: Symbol,
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def append_after_action(*names, except: nil, only: nil, if: nil, unless: nil, &block); end

  # append_around_action is an alias of around_action
  sig do
    params(
      names: Symbol,
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def append_around_action(*names, except: nil, only: nil, if: nil, unless: nil, &block); end

  # append_before_action is an alias of before_action
  sig do
    params(
      names: Symbol,
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def append_before_action(*names, except: nil, only: nil, if: nil, unless: nil, &block); end

  sig do
    params(
      names: Symbol,
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def around_action(*names, except: nil, only: nil, if: nil, unless: nil, &block); end

  sig do
    params(
      names: Symbol,
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def before_action(*names, except: nil, only: nil, if: nil, unless: nil, &block); end

  sig do
    params(
      names: Symbol,
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def prepend_after_action(*names, except: nil, only: nil, if: nil, unless: nil, &block); end

  sig do
    params(
      names: Symbol,
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def prepend_around_action(*names, except: nil, only: nil, if: nil, unless: nil, &block); end

  sig do
    params(
      names: Symbol,
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def prepend_before_action(*names, except: nil, only: nil, if: nil, unless: nil, &block); end

  sig do
    params(
      names: Symbol,
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc))
    ).void
  end
  def skip_after_action(*names, except: nil, only: nil, if: nil, unless: nil); end

  sig do
    params(
      names: Symbol,
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc))
    ).void
  end
  def skip_around_action(*names, except: nil, only: nil, if: nil, unless: nil); end

  sig do
    params(
      names: Symbol,
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc))
    ).void
  end
  def skip_before_action(*names, except: nil, only: nil, if: nil, unless: nil); end
end

# https://api.rubyonrails.org/classes/ActionController/MimeResponds.html
module ActionController::MimeResponds
  sig do
    params(
      mimes: T.nilable(Symbol),
      block: T.nilable(T.proc.params(arg0: ActionController::MimeResponds::Collector).void)
    ).void
  end
  def respond_to(*mimes, &block); end
end

class ActionController::MimeResponds::Collector
  sig { params(block: T.nilable(T.proc.void)).void }
  def html(&block); end

  sig { params(block: T.nilable(T.proc.void)).void }
  def js(&block); end

  sig { params(block: T.nilable(T.proc.void)).void }
  def json(&block); end

  sig { params(block: T.nilable(T.proc.void)).void }
  def xml(&block); end
end
