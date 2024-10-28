# typed: strict
# frozen_string_literal: true


  module Homebrew
    module CLI
      module CaskBlocker
        extend T::Helpers

        requires_ancestor { Homebrew::CLI::Parser }

        sig { void }
        def set_default_options
          args["formula?"] = true if args.respond_to?(:formula?)
        end

        sig { void }
        def validate_options
          return unless args.respond_to?(:cask?)
          return unless args.cask?

          odie "Invalid `--cask` usage: Casks are disabled"
        end
      end
    end
  end


Homebrew::CLI::Parser.prepend(Homebrew::CLI::CaskBlocker)
